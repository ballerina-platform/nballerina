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
       
    function basicBlock(int label) returns llvm:BasicBlock  => self.blocks[label];

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
    builder.positionAtEnd(scaffold.basicBlock(block.label));
    foreach var insn in block.insns {
        if insn is bir:IntArithmeticBinaryInsn {
            buildArithmeticBinary(builder, scaffold, insn);
        }
        else if insn is bir:IntCompareInsn {
            buildIntCompare(builder, scaffold, insn);
        }
        else if insn is bir:BooleanCompareInsn {
            buildBooleanCompare(builder, scaffold, insn);
        }
        else if insn is bir:EqualInsn {
            check buildEqual(builder, scaffold, insn);
        }
        else if insn is bir:IntNegateInsn {
            buildIntNegateInsn(builder, scaffold, insn);
        }
        else if insn is bir:BooleanNotInsn {
            buildBooleanNotInsn(builder, scaffold, insn);
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
        else if insn is bir:BranchInsn {
            check buildBranch(builder, scaffold, insn);
        }
        else if insn is bir:CondBranchInsn {
            check buildCondBranch(builder, scaffold, insn);
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

function buildBranch(llvm:Builder builder, Scaffold scaffold, bir:BranchInsn insn) returns BuildError? {
    builder.br(scaffold.basicBlock(insn.dest));
}

function buildCondBranch(llvm:Builder builder, Scaffold scaffold, bir:CondBranchInsn insn) returns BuildError? {
    builder.condBr(builder.load(scaffold.address(insn.operand)),
                   scaffold.basicBlock(insn.ifTrue),
                   scaffold.basicBlock(insn.ifFalse));
}

function buildRet(llvm:Builder builder, Scaffold scaffold, bir:RetInsn insn) returns BuildError? {
    builder.ret(check buildRetValue(builder, scaffold, insn.operand));
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildValueAsInt(builder, scaffold, insn.operand), scaffold.address(insn.result));
}

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    // JBUG #31008 cannot write this with select
    llvm:Value[] args = [];
    foreach var arg in insn.args {
        args.push(check buildValue(builder, scaffold, arg));
    }
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

function buildIntCompare(llvm:Builder builder, Scaffold scaffold, bir:IntCompareInsn insn) {
    builder.store(builder.iCmp(buildIntCompareOp(insn.op),
                               buildInt(builder, scaffold, insn.operands[0]),
                               buildInt(builder, scaffold, insn.operands[1])),
                  scaffold.address(insn.result));                          
}

function buildBooleanCompare(llvm:Builder builder, Scaffold scaffold, bir:BooleanCompareInsn insn) {
    builder.store(builder.iCmp(buildBooleanCompareOp(insn.op),
                               buildBoolean(builder, scaffold, insn.operands[0]),
                               buildBoolean(builder, scaffold, insn.operands[1])),
                  scaffold.address(insn.result));                          
}

function buildEqual(llvm:Builder builder, Scaffold scaffold, bir:EqualInsn insn) returns err:Any? {
    builder.store(builder.iCmp(insn.negate ? "ne" : "eq",
                               check buildValue(builder, scaffold, insn.operands[0]),
                               check buildValue(builder, scaffold, insn.operands[1])),
                  scaffold.address(insn.result));                          
}

function buildIntNegateInsn(llvm:Builder builder, Scaffold scaffold, bir:IntNegateInsn insn) {
    builder.store(builder.binaryInt("sub", llvm:constInt(LLVM_INT, 0), buildInt(builder, scaffold, insn.operand)),
                  scaffold.address(insn.result));
}

function buildBooleanNotInsn(llvm:Builder builder, Scaffold scaffold, bir:BooleanNotInsn insn) {
    builder.store(builder.binaryInt("xor", llvm:constInt(LLVM_BOOLEAN, 1), builder.load(scaffold.address(insn.operand))),
                  scaffold.address(insn.result));
}

function buildRetValue(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns llvm:Value?|err:Any {
    return operand is () ? () : buildValue(builder, scaffold, operand);
}

function buildValue(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns llvm:Value|err:Any {
    if operand is bir:Register {
        return builder.load(scaffold.address(operand));
    }
    else if operand is int {
        return llvm:constInt(LLVM_INT, operand);
    }
    else if operand is boolean {
        return llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0);
    }
    else {
        return err:unimplemented("only support expressions of type int and boolean");
    }
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

function buildBoolean(llvm:Builder builder, Scaffold scaffold, bir:BooleanOperand operand) returns llvm:Value {
    if operand is boolean {
        return llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

final readonly & map<llvm:BinaryIntOp> binaryIntOps = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "sdiv",
    "%": "srem"
};

function buildBinaryIntOp(bir:ArithmeticBinaryOp op) returns llvm:BinaryIntOp {
    return <llvm:BinaryIntOp>binaryIntOps[op];
}

final readonly & map<llvm:IntPredicate> signedIntPredicateOps = {
    "<": "slt",
    "<=": "sle",
    ">": "sgt",
    ">=": "sge"
};

final readonly & map<llvm:IntPredicate> unsignedIntPredicateOps = {
    "<": "ult",
    "<=": "ule",
    ">": "ugt",
    ">=": "uge"
};

function buildIntCompareOp(bir:OrderOp op) returns llvm:IntPredicate {
    return <llvm:IntPredicate>signedIntPredicateOps[op];
}

function buildBooleanCompareOp(bir:OrderOp op) returns llvm:IntPredicate {
    return <llvm:IntPredicate>unsignedIntPredicateOps[op];
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

// This is jsut enough to get us started.
// C++ starts mangled names with `_Z` (why `Z`?),
// so I'm starting Ballerina names with `_B`.
function mangleExternalSymbol(bir:ExternalSymbol symbol) returns string {
    return "_B" + symbol.module.names[0] + "__" + symbol.identifier;
}

function mangleInternalSymbol(bir:ModuleId modId, bir:InternalSymbol symbol) returns string {
    return "_B_" + symbol.identifier;
}
