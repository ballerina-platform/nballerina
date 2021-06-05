import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.nback.llvm;

type BuildError err:Semantic|err:Unimplemented;

type RetType llvm:IntType|LLVM_VOID;

type Alignment 1|8;

const LLVM_INT = "i64";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

class Scaffold {
    // LLVM type for each BIR register
    private final llvm:IntType[] types;
    // LLVM ValueRef referring to address (allocated with alloca)
    // of each BIR register
    private final llvm:Value[] addresses;
    // LLVM basic blocks indexed by BIR label
    private final llvm:BasicBlock[] blocks;

    function init(llvm:Function llFunc, llvm:Builder builder, bir:FunctionCode code) returns err:Any? {
        final llvm:IntType[] types = from var reg in code.registers select check buildValueType(reg.semType);
        self.types = types;
        self.blocks = from var b in code.blocks select llFunc.appendBasicBlock();
        builder.positionAtEnd(self.blocks[0]);
        self.addresses = from var ty in types select builder.alloca(ty, typeAlignment(ty));
    }

    function address(bir:Register r) returns llvm:Value => self.addresses[r.number];

    function paramAddress(int i) returns llvm:Value => self.addresses[i];
       
    function basicBlock(bir:BasicBlock b) returns llvm:BasicBlock  => self.blocks[b.label];

    function valueType(bir:Register r) returns llvm:IntType => self.types[r.number];
}

function buildFunction(bir:Module mod, bir:FunctionDefn defn, llvm:Module llMod) returns err:Any? {
    llvm:FunctionType ty = check buildFunctionSignature(defn.signature);
    llvm:Function llFunc = llMod.addFunction(defn.name, ty);
    llvm:Builder builder = new;
    bir:FunctionCode code = check defn.generateCode(mod);
    Scaffold scaffold = check new(llFunc, builder, code);  
    storeParams(builder, scaffold, llFunc, ty.paramTypes.length());
    foreach var b in code.blocks {
        check buildBasicBlock(builder, scaffold, b);
    }
}

function storeParams(llvm:Builder builder, Scaffold scaffold, llvm:Function llFunc, int nParams) {
    foreach int i in 0 ..< nParams {
        builder.store(llFunc.getParam(i), scaffold.paramAddress(i));
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
        else {
            return err:unimplemented(`BIR insn ${insn.name} not implemeted`);
        }
    }
}

function buildRet(llvm:Builder builder, Scaffold scaffold, bir:RetInsn insn) returns BuildError? {
    bir:Operand operand = insn.operand;
    if operand is bir:IntOperand {
        return builder.returnValue(buildInt(builder, scaffold, operand));
    }
    else if operand is () {
        return builder.returnVoid();
    }
    else {
        return err:unreached();
    }
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildValueAsInt(builder, scaffold, insn.operand), scaffold.address(insn.result));
}

function buildArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) {
    builder.store(builder.binaryInt(buildArithmeticBinaryInsnName(insn.op),
                                    buildInt(builder, scaffold, insn.operands[0]),
                                    buildInt(builder, scaffold, insn.operands[1])),
                  scaffold.address(insn.result));                          
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

final readonly & map<string> arithmeticInsnNames = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "div",
    "%": "rem"
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

function buildRetType(t:SemType ty) returns RetType|BuildError {
    if ty === t:NIL {
        return "void";
    }
    return buildValueType(ty);
}

function buildValueType(t:SemType ty) returns llvm:IntType|BuildError {
    if ty === t:INT {
        return "i64";
    }
    else if ty === t:BOOLEAN {
        return "i1";
    }
    return err:unimplemented("unimplemented type");
}

// XXX what's the right alignment for i1
function typeAlignment(llvm:IntType ty) returns Alignment {
    return 8;
}
