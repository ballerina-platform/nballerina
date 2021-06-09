import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.nback.llvm;

type BuildError err:Semantic|err:Unimplemented;

type Alignment 1|8;

const LLVM_INT = "i64";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

class Scaffold {
    // LLVM type for each BIR register
    private final llvm:IntType[] types;
    // LLVM ValueRef referring to address (allocated with alloca)
    // of each BIR register
    private final llvm:PointerValue[] addresses;
    // LLVM basic blocks indexed by BIR label
    private final llvm:BasicBlock[] blocks;
    // LLVM functions in the module indexed by name
    private final map<llvm:FunctionDefn> functions;

    function init(llvm:FunctionDefn llFunc, map<llvm:FunctionDefn> functions, llvm:Builder builder,  bir:FunctionDefn defn, bir:FunctionCode code) returns BuildError? {
        self.functions = functions;
        // JBUG 31008 if this is a query expression
        final llvm:IntType[] types = [];
        foreach var reg in code.registers {
            types.push(check buildValueType(reg.semType));
        }
        self.types = types;
        self.blocks = from var b in code.blocks select llFunc.appendBasicBlock();
        builder.positionAtEnd(self.blocks[0]);
        self.addresses = from var ty in types select builder.alloca(ty, typeAlignment(ty));
        bir:FunctionSignature ty = defn.signature;

        foreach int i in 0 ..< ty.paramTypes.length() {
            builder.store(llFunc.getParam(i), self.addresses[i]);
        }
    }

    function address(bir:Register r) returns llvm:PointerValue => self.addresses[r.number];
       
    function basicBlock(bir:BasicBlock b) returns llvm:BasicBlock  => self.blocks[b.label];

    function valueType(bir:Register r) returns llvm:IntType => self.types[r.number];

    function getFunction(string name) returns llvm:Function => self.functions.get(name);
}

function buildModule(bir:Module mod) returns llvm:Module|BuildError {
    llvm:Module llMod = new;
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    llvm:FunctionDefn[] llFuncs = [];
    llvm:FunctionType[] llFuncTypes = [];
    map<llvm:FunctionDefn> llFuncMap = {};
    foreach var defn in functionDefns {
        llvm:FunctionType ty = check buildFunctionSignature(defn.signature);
        llFuncTypes.push(ty);
        llvm:FunctionDefn llFunc = llMod.addFunction(defn.name, ty);
        llFuncs.push(llFunc);
        llFuncMap[defn.name] = llFunc;
    }  
    llvm:Builder builder = new;
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        Scaffold scaffold = check new(llFuncs[i], llFuncMap,  builder, functionDefns[i], code);
        check buildFunctionBody(builder, scaffold, code);
    }
    return llMod;
}

function buildFunctionBody(llvm:Builder builder, Scaffold scaffold, bir:FunctionCode code) returns BuildError? {
    foreach var b in code.blocks {
        check buildBasicBlock(builder, scaffold, b);
    }
}

function buildBasicBlock(llvm:Builder builder, Scaffold scaffold, bir:BasicBlock block) returns BuildError? {
    builder.positionAtEnd(scaffold.basicBlock(block));
    foreach var insn in block.insns {
        if insn is bir:IntArithmeticBinaryInsn {
            buildArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:RetInsn {
            check buildRet(builder, scaffold, insn);
        }
        else if insn is bir:AssignInsn {
            check buildAssign(builder, scaffold, insn);
        }
        else if insn is bir:CallInsn {
            check buildCall(builder, scaffold, insn);
        }
        else if insn is bir:CatchInsn {
            // XXX ignore catch basic block for now
            break;
        }
        else {
            return err:unimplemented(`BIR insn ${insn.name} not implemeted`);
        }
    }
}

function buildRet(llvm:Builder builder, Scaffold scaffold, bir:RetInsn insn) returns BuildError? {
    builder.ret(check buildRetValueAsInt(builder, scaffold, insn.operand));
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildValueAsInt(builder, scaffold, insn.operand), scaffold.address(insn.result));
}

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    llvm:Value[] args = from var arg in insn.args select check buildValueAsInt(builder, scaffold, arg);
    // Handler indirect calls later
    bir:FunctionRef fn = <bir:FunctionRef>insn.func;
    // Handle global identifiers later
    string name = <string>fn.functionIdentifier;
    llvm:Function func = scaffold.getFunction(name);
    llvm:Value? ret = builder.call(func, args);
    if !(ret is ()) {
        builder.store(ret, scaffold.address(insn.result));
    }
    // XXX in some cases need to store nil in the register
}

function buildArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) {
    builder.store(builder.binaryInt(buildArithmeticBinaryInsnName(insn.op),
                                    buildInt(builder, scaffold, insn.operands[0]),
                                    buildInt(builder, scaffold, insn.operands[1])),
                  scaffold.address(insn.result));                          
}

function buildRetValueAsInt(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns llvm:Value?|err:Any {
    return operand is () ? () : buildValueAsInt(builder, scaffold, operand);
}

function buildValueAsInt(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns llvm:Value|err:Any {
    if operand is bir:IntOperand {
        return buildInt(builder, scaffold, operand);
    }
    else {
        return err:unimplemented("expected an expression of type int");
    }
}

function buildInt(llvm:Builder builder, Scaffold scaffold, bir:IntOperand operand) returns llvm:Value {
    if operand is int {
        return llvm:constInt(LLVM_INT, operand);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

final readonly & map<llvm:BinaryInsn> arithmeticInsnNames = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "sdiv",
    "%": "srem"
};

function buildArithmeticBinaryInsnName(bir:ArithmeticBinaryOp op) returns llvm:BinaryInsn {
    return <llvm:BinaryInsn>arithmeticInsnNames[op];
}

function buildFunctionSignature(bir:FunctionSignature signature) returns llvm:FunctionType|BuildError {
    llvm:Type[] paramTypes = from var ty in signature.paramTypes select check buildValueType(ty);
    llvm:FunctionType ty = {
        returnType: check buildRetType(signature.returnType),
        paramTypes: paramTypes.cloneReadOnly()
    };
    return ty;
}

function buildRetType(t:SemType ty) returns llvm:RetType|BuildError {
    if ty === t:NIL {
        return LLVM_VOID;
    }
    return buildValueType(ty);
}

function buildValueType(t:SemType ty) returns llvm:IntType|BuildError {
    if ty === t:INT {
        return LLVM_INT;
    }
    else if ty === t:BOOLEAN {
        return LLVM_BOOLEAN;
    }
    // This happens with the code generated for potential panics.
    // For now we will represent panics with an i64
    else if ty === t:ERROR {
        return LLVM_INT;
    }
    return err:unimplemented("unimplemented type");
}

// XXX what's the right alignment for i1
function typeAlignment(llvm:IntType ty) returns Alignment {
    return 8;
}
