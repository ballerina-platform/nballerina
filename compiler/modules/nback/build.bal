import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.nback.llvm;

type BuildError err:Semantic|err:Unimplemented;

type Alignment 1|8;

const LLVM_INT = "i64";
const LLVM_BOOLEAN = "i1";
const LLVM_NIL = "i1";
const LLVM_VOID = "void";

type ImportedFunction record {|
    readonly bir:ExternalSymbol symbol;
    llvm:FunctionDecl decl;
|};

class Scaffold {
    private final bir:ModuleId modId;
    private final llvm:Module llMod;
    // LLVM type for each BIR register
    private final llvm:IntType[] types;
    // LLVM ValueRef referring to address (allocated with alloca)
    // of each BIR register
    private final llvm:PointerValue[] addresses;
    // LLVM basic blocks indexed by BIR label
    private final llvm:BasicBlock[] blocks;
    // LLVM functions in the module indexed by (unmangled) identifier within the module
    private final map<llvm:FunctionDefn> functionDefns;
    // List of all imported functions that have been added to the LLVM module
    private final table<ImportedFunction> key(symbol) importedFunctions = table [];

    function init(bir:ModuleId modId, llvm:Module llMod, llvm:FunctionDefn llFunc, map<llvm:FunctionDefn> functions, llvm:Builder builder,  bir:FunctionDefn defn, bir:FunctionCode code) returns BuildError? {
        self.modId = modId;
        self.llMod = llMod;
        self.functionDefns = functions;
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

    function getFunctionDefn(string name) returns llvm:FunctionDefn => self.functionDefns.get(name);

    function getModule() returns llvm:Module => self.llMod;

    function getModuleId() returns bir:ModuleId => self.modId;

    function getImportedFunction(bir:ExternalSymbol symbol) returns llvm:FunctionDecl? {
        ImportedFunction? fn = self.importedFunctions[symbol];
        return fn is () ? () : fn.decl;
    }
    
    function addImportedFunction(bir:ExternalSymbol symbol, llvm:FunctionDecl decl) {
        self.importedFunctions.add({symbol, decl});
    }
}


function buildModule(bir:Module mod) returns llvm:Module|BuildError {
    bir:ModuleId modId = mod.getId();
    llvm:Module llMod = new;
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    llvm:FunctionDefn[] llFuncs = [];
    llvm:FunctionType[] llFuncTypes = [];
    map<llvm:FunctionDefn> llFuncMap = {};
    foreach var defn in functionDefns {
        llvm:FunctionType ty = check buildFunctionSignature(defn.signature);
        llFuncTypes.push(ty);
        bir:InternalSymbol symbol = defn.symbol;
        llvm:FunctionDefn llFunc = llMod.addFunctionDefn(mangleInternalSymbol(modId, symbol), ty);
        if !symbol.isPublic {
            llFunc.setLinkage("internal");
        }
        llFuncs.push(llFunc);
        llFuncMap[defn.symbol.identifier] = llFunc;
    }  
    llvm:Builder builder = new;
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        Scaffold scaffold = check new(mod.getId(), llMod, llFuncs[i], llFuncMap,  builder, functionDefns[i], code);
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
    bir:FunctionRef funcRef = <bir:FunctionRef>insn.func;
    bir:Symbol funcSymbol = funcRef.symbol;
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, funcRef.signature);
    }  
    llvm:Value? ret = builder.call(func, args);
    if !(ret is ()) {
        builder.store(ret, scaffold.address(insn.result));
    }
    else if insn.result.semType === t:NIL {
        builder.store(llvm:constInt(LLVM_NIL, 0), scaffold.address(insn.result));
    }
}

function buildFunctionDecl(Scaffold scaffold, bir:ExternalSymbol symbol, bir:FunctionSignature sig) returns llvm:FunctionDecl|BuildError {
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if !(decl is ()) {
        return decl;
    }
    else {
        llvm:FunctionType ty = check buildFunctionSignature(sig);
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl d = mod.addFunctionDecl(mangleExternalSymbol(symbol), ty);
        scaffold.addImportedFunction(symbol, d);
        return d;
    }
}

function buildArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) {
    builder.store(builder.binaryInt(buildBinaryIntOp(insn.op),
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

final readonly & map<llvm:BinaryIntOp> arithmeticInsnNames = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "sdiv",
    "%": "srem"
};

function buildBinaryIntOp(bir:ArithmeticBinaryOp op) returns llvm:BinaryIntOp {
    return <llvm:BinaryIntOp>arithmeticInsnNames[op];
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
    // This happens with function call statement
    else if ty === t:NIL {
        return LLVM_NIL;
    }
    return err:unimplemented("unimplemented type");
}

// XXX what's the right alignment for i1
function typeAlignment(llvm:IntType ty) returns Alignment {
    return 8;
}

function mangleExternalSymbol(bir:ExternalSymbol symbol) returns string {
    return mangle(symbol.module, symbol.identifier);
}

function mangleInternalSymbol(bir:ModuleId modId, bir:InternalSymbol symbol) returns string {
    if symbol.isPublic {
        return mangle(modId, symbol.identifier);
    }
    else {
        return symbol.identifier;
    }
}

function mangle(bir:ModuleId mod, string name) returns string {
    // XXX
    return name;
}