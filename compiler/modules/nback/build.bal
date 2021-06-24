import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.nback.llvm;

type BuildError err:Semantic|err:Unimplemented;

type Alignment 1|8;

const LLVM_INT = "i64";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

final llvm:PointerType LLVM_TAGGED_PTR = llvm:pointerType("i8");
final llvm:PointerType LLVM_NIL_TYPE = LLVM_TAGGED_PTR;

type ValueType llvm:IntegralType;

// A Repr is way of representing values.
// It's a mapping from a SemType to an LLVM type.
type Repr REPR_INT|REPR_BOOLEAN|REPR_ERROR|REPR_TAGGED;
type RetRepr Repr|REPR_VOID;

// Maps int to i64
const REPR_INT = 0;
// Maps int to i1
const int REPR_BOOLEAN = REPR_INT + 1;
// Maps error value to (for now) int (for panics)
const int REPR_ERROR = REPR_BOOLEAN + 1;
// Maps any Ballerina value to a tagged pointer
const int REPR_TAGGED = REPR_ERROR + 1;
// JBUG this goes wrong when you use REPR_VOID as a type as in buildRet
// const int REPR_VOID = REPR_TAGGED + 1;
const int REPR_VOID = 4;

// XXX This is not quite right yet
// We need to capture subtyping relationships between representations
// e.g. that nil is a subtype of TAGGED_PTR
final llvm:IntegralType[] reprTypes = [
    LLVM_INT,
    LLVM_BOOLEAN,
    // For now we represent an error as an i64
    LLVM_INT,
    LLVM_TAGGED_PTR
];

final llvm:RetType[] retReprTypes = [
    LLVM_INT,
    LLVM_BOOLEAN,
    // For now we represent an error as an i64
    LLVM_INT,
    LLVM_TAGGED_PTR,
    LLVM_VOID
];

const PANIC_OVERFLOW = 1;
const PANIC_DIVIDE_BY_ZERO = 2;
const PANIC_TYPE_CAST = 3;

final llvm:FunctionType panicFunctionType = { returnType: "void", paramTypes: ["i64"] };
final llvm:FunctionType allocFunctionType = { returnType: llvm:pointerType("i8"), paramTypes: ["i64"] };

type RuntimeFunctionName "panic"|"alloc";

final bir:ModuleId runtimeModule = {
    organization: "ballerinai",
    names: ["runtime"]
};

type ImportedFunction record {|
    readonly bir:ExternalSymbol symbol;
    llvm:FunctionDecl decl;
|};

type ImportedFunctionTable table<ImportedFunction> key(symbol);

class Scaffold {
    private final llvm:Module llMod;
    private final llvm:FunctionDefn llFunc;
    // Representation for each BIR register
    private final Repr[] reprs;
    private final RetRepr retRepr;
    // LLVM ValueRef referring to address (allocated with alloca)
    // of each BIR register
    private final llvm:PointerValue[] addresses;
    // LLVM basic blocks indexed by BIR label
    private final llvm:BasicBlock[] blocks;
    // LLVM functions in the module indexed by (unmangled) identifier within the module
    private final map<llvm:FunctionDefn> functionDefns;
    // List of all imported functions that have been added to the LLVM module
    private final ImportedFunctionTable importedFunctions;
    private bir:Label? onPanicLabel = ();
    private final bir:BasicBlock[] birBlocks;

    function init(llvm:Module llMod, llvm:FunctionDefn llFunc, map<llvm:FunctionDefn> functions, ImportedFunctionTable importedFunctions, llvm:Builder builder,  bir:FunctionDefn defn, bir:FunctionCode code) returns BuildError? {
        self.llMod = llMod;
        self.llFunc = llFunc;
        self.functionDefns = functions;
        self.importedFunctions = importedFunctions;
        self.birBlocks = code.blocks;
        // JBUG 31008 if this is a query expression
        final Repr[] reprs = [];
        foreach var reg in code.registers {
            reprs.push(check semTypeRepr(reg.semType));
        }
        self.reprs = reprs;
        self.blocks = from var b in code.blocks select llFunc.appendBasicBlock();
        builder.positionAtEnd(self.blocks[0]);
        self.addresses = [];
        foreach int i in 0 ..< reprs.length() {
            self.addresses.push(builder.alloca(reprTypes[reprs[i]], (), code.registers[i].varName));
        } 
        bir:FunctionSignature ty = defn.signature;

        foreach int i in 0 ..< ty.paramTypes.length() {
            builder.store(llFunc.getParam(i), self.addresses[i]);
        }
        self.retRepr = check semTypeRetRepr(defn.signature.returnType);
    }

    function address(bir:Register r) returns llvm:PointerValue => self.addresses[r.number];
       
    function basicBlock(int label) returns llvm:BasicBlock  => self.blocks[label];

    function getRepr(bir:Register r) returns Repr => self.reprs[r.number];

    function getRetRepr() returns RetRepr => self.retRepr;

    function getFunctionDefn(string name) returns llvm:FunctionDefn => self.functionDefns.get(name);

    function getModule() returns llvm:Module => self.llMod;

    function getImportedFunction(bir:ExternalSymbol symbol) returns llvm:FunctionDecl? {
        ImportedFunction? fn = self.importedFunctions[symbol];
        return fn is () ? () : fn.decl;
    }
    
    function addImportedFunction(bir:ExternalSymbol symbol, llvm:FunctionDecl decl) {
        self.importedFunctions.add({symbol, decl});
    }

    function getIntrinsicFunction(llvm:IntrinsicFunctionName name) returns llvm:FunctionDecl {
        return self.llMod.getIntrinsicDeclaration(name);
    }
    
    function addBasicBlock() returns llvm:BasicBlock {
        return self.llFunc.appendBasicBlock();
    }

    function setBasicBlock(bir:BasicBlock block) {
        self.onPanicLabel = block.onPanic;
    }

    function getOnPanic() returns llvm:BasicBlock {
        return self.blocks[<bir:Label>self.onPanicLabel];
    }

    function panicAddress() returns llvm:PointerValue {
        bir:Insn catchInsn = self.birBlocks[<bir:Label>self.onPanicLabel].insns[0];
        return self.address((<bir:CatchInsn>catchInsn).result);
    }
}

function buildModule(bir:Module mod, llvm:Context context) returns llvm:Module|BuildError {
    bir:ModuleId modId = mod.getId();
    llvm:Module llMod = context.createModule();
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
    llvm:Builder builder = context.createBuilder();
    ImportedFunctionTable importedFunctions = table [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        Scaffold scaffold = check new(llMod, llFuncs[i], llFuncMap, importedFunctions, builder, functionDefns[i], code);
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
    scaffold.setBasicBlock(block);
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
        else if insn is bir:EqualityInsn {
            check buildEquality(builder, scaffold, insn);
        }
        else if insn is bir:IntNegateInsn {
            buildIntNegate(builder, scaffold, insn);
        }
        else if insn is bir:BooleanNotInsn {
            buildBooleanNot(builder, scaffold, insn);
        }
        else if insn is bir:RetInsn {
            check buildRet(builder, scaffold, insn);
        }
        else if insn is bir:AssignInsn {
            check buildAssign(builder, scaffold, insn);
        }
        else if insn is bir:TypeCastInsn {
            check buildTypeCast(builder, scaffold, insn);
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
            // nothing to do
            // scaffold.panicAddress uses this to figure out where to store the panic info
        }
        else if insn is bir:AbnormalRetInsn {
            buildAbnormalRet(builder, scaffold, insn);
        }
        else {
            return err:unimplemented(`BIR insn ${insn.name} not implemented`);
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
    RetRepr repr = scaffold.getRetRepr();
    builder.ret(repr is REPR_VOID ? () : check buildRepr(builder, scaffold, insn.operand, repr));
}

function buildAbnormalRet(llvm:Builder builder, Scaffold scaffold, bir:AbnormalRetInsn insn) {
    _ = builder.call(buildRuntimeFunctionDecl(scaffold, "panic", panicFunctionType), [buildInt(builder, scaffold, insn.operand)]);
    builder.unreachable();   
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildRepr(builder, scaffold, insn.operand, scaffold.getRepr(insn.result)), scaffold.address(insn.result));
}

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    // Handler indirect calls later
    bir:FunctionRef funcRef = <bir:FunctionRef>insn.func;
    // JBUG #31008 cannot write this with select
    llvm:Value[] args = [];
    t:SemType[] paramTypes = funcRef.signature.paramTypes;
    foreach int i in 0 ..< insn.args.length() {
        args.push(check buildRepr(builder, scaffold, insn.args[i], check semTypeRepr(paramTypes[i])));
    }

    bir:Symbol funcSymbol = funcRef.symbol;
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, funcRef.signature);
    }  
    llvm:Value? retValue = builder.call(func, args);
    RetRepr retRepr = check semTypeRetRepr(funcRef.signature.returnType);
    check buildStoreRet(builder, scaffold, retRepr, retValue, insn.result);
}

function buildStoreRet(llvm:Builder builder, Scaffold scaffold, RetRepr retRepr, llvm:Value? retValue, bir:Register reg) returns BuildError? {
    if retRepr == REPR_VOID {
         builder.store(buildConstNil(), scaffold.address(reg));
    }
    else {
        builder.store(check buildConvertRepr(builder, scaffold, retRepr, <llvm:Value>retValue, scaffold.getRepr(reg)),
                      scaffold.address(reg));
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

function buildRuntimeFunctionDecl(Scaffold scaffold, RuntimeFunctionName name, llvm:FunctionType ty) returns llvm:FunctionDecl {
    bir:ExternalSymbol symbol =  { module: runtimeModule, identifier: name };
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if !(decl is ()) {
        return decl;
    }
    else {
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl d = mod.addFunctionDecl(mangleRuntimeSymbol(name), ty);
        scaffold.addImportedFunction(symbol, d);
        return d;
    } 
}

function buildArithmeticBinary(llvm:Builder builder, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) {
    llvm:IntrinsicFunctionName? intrinsicName = buildBinaryIntIntrinsic(insn.op);
    llvm:Value lhs = buildInt(builder, scaffold, insn.operands[0]);
    llvm:Value rhs = buildInt(builder, scaffold, insn.operands[1]);
    llvm:Value result;
    llvm:BasicBlock? joinBlock = ();
    if intrinsicName != () {
        llvm:FunctionDecl intrinsicFunction = scaffold.getIntrinsicFunction(intrinsicName);
        // XXX better to distinguish builder.call and builder.callVoid
        llvm:Value resultWithOverflow = <llvm:Value>builder.call(intrinsicFunction, [lhs, rhs]);
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.extractValue(resultWithOverflow, 1), overflowBlock, continueBlock);
        builder.positionAtEnd(overflowBlock);
        builder.store(llvm:constInt(LLVM_INT, PANIC_OVERFLOW), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        result = builder.extractValue(resultWithOverflow, 0);
    }
    else {
        llvm:BasicBlock zeroDivisorBlock = scaffold.addBasicBlock();
        llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
        builder.condBr(builder.iCmp("eq", rhs, llvm:constInt(LLVM_INT, 0)), zeroDivisorBlock, continueBlock);
        builder.positionAtEnd(zeroDivisorBlock);
        builder.store(llvm:constInt(LLVM_INT, PANIC_DIVIDE_BY_ZERO), scaffold.panicAddress());
        builder.br(scaffold.getOnPanic());
        builder.positionAtEnd(continueBlock);
        continueBlock = scaffold.addBasicBlock();
        llvm:BasicBlock overflowBlock = scaffold.addBasicBlock();
        builder.condBr(builder.binaryInt("and",
                                         builder.iCmp("eq", lhs, llvm:constInt(LLVM_INT, int:MIN_VALUE)),
                                         builder.iCmp("eq", rhs, llvm:constInt(LLVM_INT, -1))),
                       overflowBlock,
                       continueBlock);
        builder.positionAtEnd(overflowBlock);
        llvm:BinaryIntOp op;
        if insn.op == "/" {
            op = "sdiv";
            builder.store(llvm:constInt(LLVM_INT, PANIC_OVERFLOW), scaffold.panicAddress());
            builder.br(scaffold.getOnPanic());
        }
        else {
            builder.store(llvm:constInt(LLVM_INT, 0), scaffold.address(insn.result));
            llvm:BasicBlock b = scaffold.addBasicBlock();
            builder.br(b);
            joinBlock = b;
            op = "srem";
        }
        builder.positionAtEnd(continueBlock);
        result = builder.binaryInt(op, lhs, rhs);
    }
    buildStoreInt(builder, scaffold, result, insn.result);                                  
    if !(joinBlock is ()) {
        builder.br(joinBlock);
        builder.positionAtEnd(joinBlock);
    }                         
}

function buildIntCompare(llvm:Builder builder, Scaffold scaffold, bir:IntCompareInsn insn) {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(buildIntCompareOp(insn.op),
                                   buildInt(builder, scaffold, insn.operands[0]),
                                   buildInt(builder, scaffold, insn.operands[1])),
                      insn.result);                          
}

function buildBooleanCompare(llvm:Builder builder, Scaffold scaffold, bir:BooleanCompareInsn insn) {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(buildBooleanCompareOp(insn.op),
                               buildBoolean(builder, scaffold, insn.operands[0]),
                               buildBoolean(builder, scaffold, insn.operands[1])),
                      insn.result);
}

type CmpEqOp "ne"|"eq";

// For subset 2, == and === are the same: they differ only in when they are allowed
function buildEquality(llvm:Builder builder, Scaffold scaffold, bir:EqualityInsn insn) returns BuildError? {
    var [lhsRepr, lhsValue] = buildReprValue(builder, scaffold, insn.operands[0]);
    var [rhsRepr, rhsValue] = buildReprValue(builder, scaffold, insn.operands[1]);
    CmpEqOp op = insn.op[0] == "!" ?  "ne" : "eq"; 
    bir:Register result = insn.result;
    match [lhsRepr, rhsRepr] {
        [REPR_TAGGED, REPR_TAGGED] => {
            if operandIsNil(insn.operands[0]) || operandIsNil(insn.operands[1]) {
                return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
            }
            else {
                return buildEqualTaggedTagged(builder, scaffold, op, <llvm:PointerValue>lhsValue, <llvm:PointerValue>rhsValue, result);
            }
        }
        [REPR_TAGGED, REPR_BOOLEAN] => {
            return buildEqualTaggedBoolean(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [REPR_BOOLEAN, REPR_TAGGED] => {
            return buildEqualTaggedBoolean(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, result);
        }
        [REPR_TAGGED, REPR_INT] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>lhsValue, rhsValue, result);
        }
        [REPR_INT, REPR_TAGGED] => {
            return buildEqualTaggedInt(builder, scaffold, op, <llvm:PointerValue>rhsValue, lhsValue, result);
        }
        [REPR_BOOLEAN, REPR_BOOLEAN]
        | [REPR_INT, REPR_INT] => {
             // no tags involved, same representation, boolean/int
            return buildStoreBoolean(builder, scaffold, builder.iCmp(op, lhsValue, rhsValue), result);
        }
    }
    return err:unimplemented("equality with two different untagged representations");    
}

function operandIsNil(bir:Operand operand) returns boolean {
    return operand is bir:Register ? operand.semType === t:NIL : operand == (); 
}

function buildEqualTaggedBoolean(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result)  {
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, tagged, buildTaggedBoolean(builder, untagged)),
                      result);
}

function buildEqualTaggedInt(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged, llvm:Value untagged, bir:Register result) {
    llvm:BasicBlock intTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock otherTagBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(buildHasTag(builder, tagged, TAG_INT), intTagBlock, otherTagBlock);
    builder.positionAtEnd(otherTagBlock);
    buildStoreBoolean(builder, scaffold,
                      // result is false if op is "eq", true if op is "ne"
                      buildConstBoolean(op == "ne"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(intTagBlock);
    buildStoreBoolean(builder, scaffold, builder.iCmp(op, buildUntagInt(builder, scaffold, tagged), untagged), result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildEqualTaggedTagged(llvm:Builder builder, Scaffold scaffold, CmpEqOp op, llvm:PointerValue tagged1, llvm:PointerValue tagged2, bir:Register result) {
    llvm:BasicBlock samePointerBlock = scaffold.addBasicBlock();
    llvm:BasicBlock diffPointerBlock = scaffold.addBasicBlock();
    llvm:BasicBlock joinBlock = scaffold.addBasicBlock();
    builder.condBr(builder.iCmp("eq", tagged1, tagged2), samePointerBlock, diffPointerBlock);
    builder.positionAtEnd(samePointerBlock);
    // if the pointers are the same, we know they are ===
    buildStoreBoolean(builder, scaffold,
                      // in the case where the pointers are equal
                      // result is true if op is "eq", false if op is "ne"
                      buildConstBoolean(op == "eq"),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(diffPointerBlock);
    // the pointers are not the same
    // in this case, they can still be equal if they are both tagged ints
    llvm:BasicBlock bothIntsBlock = scaffold.addBasicBlock();
    llvm:BasicBlock diffBlock = scaffold.addBasicBlock();
    // check if they are both tagged ints
    builder.condBr(builder.binaryInt("and", buildHasTag(builder, tagged1, TAG_INT), buildHasTag(builder, tagged2, TAG_INT)),
                   bothIntsBlock, diffBlock);
    builder.positionAtEnd(diffBlock);
    // at this point, we know they are different
    buildStoreBoolean(builder, scaffold, buildConstBoolean(op == "ne"), result);
    builder.br(joinBlock);
    builder.positionAtEnd(bothIntsBlock);
    buildStoreBoolean(builder, scaffold,
                      builder.iCmp(op, buildUntagInt(builder, scaffold, tagged1),
                                       buildUntagInt(builder, scaffold, tagged2)),
                      result);
    builder.br(joinBlock);
    builder.positionAtEnd(joinBlock);
}

function buildTypeCast(llvm:Builder builder, Scaffold scaffold, bir:TypeCastInsn insn) returns BuildError? {
    var [repr, val] = buildReprValue(builder, scaffold, insn.operand);
    if repr != REPR_TAGGED {
        return err:unimplemented("cast from untagged value"); // should not happen in subset 2
    }
    llvm:PointerValue tagged = <llvm:PointerValue>val;
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock castFailBlock = scaffold.addBasicBlock();
    if insn.semType === t:BOOLEAN {
        builder.condBr(buildHasTag(builder, tagged, TAG_BOOLEAN), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreBoolean(builder, scaffold, buildUntagBoolean(builder, tagged), insn.result);
    }
    else if insn.semType === t:INT {
        builder.condBr(buildHasTag(builder, tagged, TAG_INT), continueBlock, castFailBlock);
        builder.positionAtEnd(continueBlock);
        buildStoreInt(builder, scaffold, buildUntagInt(builder, scaffold, tagged), insn.result);
    }
    else {
        return err:unimplemented("type cast other than to int or boolean"); // should not happen in subset 2
    }
    builder.positionAtEnd(castFailBlock);
    builder.store(llvm:constInt(LLVM_INT, PANIC_TYPE_CAST), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
}

function buildIntNegate(llvm:Builder builder, Scaffold scaffold, bir:IntNegateInsn insn) {
    buildStoreInt(builder, scaffold,
                  builder.binaryInt("sub", llvm:constInt(LLVM_INT, 0), buildInt(builder, scaffold, insn.operand)),
                  insn.result);
}

function buildBooleanNot(llvm:Builder builder, Scaffold scaffold, bir:BooleanNotInsn insn) {
    buildStoreBoolean(builder, scaffold,
                      builder.binaryInt("xor", llvm:constInt(LLVM_BOOLEAN, 1), builder.load(scaffold.address(insn.operand))),
                      insn.result);
}

function buildStoreInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg) == REPR_TAGGED ? buildTaggedInt(builder, scaffold, value) : value,
                  scaffold.address(reg));
}

function buildStoreBoolean(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg) == REPR_TAGGED ? buildTaggedBoolean(builder, value) : value,
                  scaffold.address(reg));
}

function buildRepr(llvm:Builder builder, Scaffold scaffold, bir:Operand operand, Repr targetRepr) returns llvm:Value|BuildError {
    var [sourceRepr, value] = buildReprValue(builder, scaffold, operand);
    return buildConvertRepr(builder, scaffold, sourceRepr, value, targetRepr);
}

function buildConvertRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr) returns llvm:Value|BuildError {
    if sourceRepr == targetRepr {
        return value;
    }
    if targetRepr == REPR_TAGGED {
        if sourceRepr == REPR_INT {
            return buildTaggedInt(builder, scaffold, value);
        }
        else if sourceRepr == REPR_BOOLEAN {
            return buildTaggedBoolean(builder, value);
        }
    }
    // this shouldn't ever happen I think
    return err:unimplemented("unimplemented conversion required");
}

// JBUG #31394 would be better to use shifts for these
                     //1234567812345678
const TAG_MASK     = 0x7f00000000000000;
const TAG_BOOLEAN  = 0x0100000000000000;
const TAG_INT      = 0x0200000000000000;
const POINTER_MASK = 0x00ffffffffffffff;

const ALIGN_HEAP = 8;

function buildTaggedBoolean(llvm:Builder builder, llvm:Value value) returns llvm:Value {
    return builder.getElementPointer(llvm:constNull(LLVM_TAGGED_PTR),
                                     builder.binaryInt("or",
                                                        builder.zExt(value, LLVM_INT),
                                                        llvm:constInt(LLVM_INT, TAG_BOOLEAN)));
}

function buildTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:Value {
    llvm:Function allocFunction = buildRuntimeFunctionDecl(scaffold, "alloc", allocFunctionType);
    llvm:PointerValue mem = <llvm:PointerValue>builder.call(allocFunction, [llvm:constInt(LLVM_INT, 8)]);
    builder.store(value, builder.bitCast(mem, llvm:pointerType(LLVM_INT)), ALIGN_HEAP);
    return builder.getElementPointer(mem, llvm:constInt(LLVM_INT, TAG_INT));
}

function buildHasTag(llvm:Builder builder, llvm:PointerValue tagged, int tag) returns llvm:Value {
    return builder.iCmp("eq", builder.binaryInt("and", builder.ptrToInt(tagged, LLVM_INT),
                                                       llvm:constInt(LLVM_INT, TAG_MASK)),
                              llvm:constInt(LLVM_INT, tag));
}

function buildUntagInt(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return builder.load(builder.bitCast(<llvm:PointerValue>builder.call(scaffold.getIntrinsicFunction("ptrmask.p0i8.i64"),
                                                                        [tagged, llvm:constInt(LLVM_INT, POINTER_MASK)]),
                                        llvm:pointerType(LLVM_INT)),
                        ALIGN_HEAP);
}

function buildUntagBoolean(llvm:Builder builder, llvm:PointerValue tagged) returns llvm:Value {
    return builder.trunc(builder.ptrToInt(tagged, LLVM_INT), LLVM_BOOLEAN);
}

function buildReprValue(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns [Repr, llvm:Value] {
    if operand is bir:Register {
        return buildLoad(builder, scaffold, operand);
    }
    else {
        return buildConst(operand);
    }
}

function buildLoad(llvm:Builder builder, Scaffold scaffold, bir:Register reg) returns [Repr, llvm:Value] {
    return [scaffold.getRepr(reg), builder.load(scaffold.address(reg))];
}

function buildConst(bir:ConstOperand operand) returns [Repr, llvm:Value] {
    if operand is int {
        return [REPR_INT, llvm:constInt(LLVM_INT, operand)];
    }
    else if operand is () {
        return [REPR_TAGGED, buildConstNil()];
    }
    else {
        // operand is boolean
        return [REPR_BOOLEAN, llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0)];
    }
}

// Build a value as REPR_INT
function buildInt(llvm:Builder builder, Scaffold scaffold, bir:IntOperand operand) returns llvm:Value {
    if operand is int {
        return llvm:constInt(LLVM_INT, operand);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

// Build a value as REPR_BOOLEAN
function buildBoolean(llvm:Builder builder, Scaffold scaffold, bir:BooleanOperand operand) returns llvm:Value {
    if operand is boolean {
        return llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

final readonly & map<llvm:IntrinsicFunctionName> binaryIntIntrinsics = {
    "+": "sadd.with.overflow.i64",
    "-": "ssub.with.overflow.i64",
    "*": "smul.with.overflow.i64"
};

// final readonly & map<llvm:BinaryIntOp> binaryIntOps = {
//     "+": "add",
//     "-": "sub",
//     "*": "mul",
//     "/": "sdiv",
//     "%": "srem"
// };

// function buildBinaryIntOp(bir:ArithmeticBinaryOp op) returns llvm:BinaryIntOp {
//     return <llvm:BinaryIntOp>binaryIntOps[op];
// }

function buildBinaryIntIntrinsic(bir:ArithmeticBinaryOp op) returns llvm:IntrinsicFunctionName? {
    return binaryIntIntrinsics[op];
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
    llvm:Type[] paramTypes = from var ty in signature.paramTypes select reprTypes[check semTypeRepr(ty)];
    RetRepr repr = check semTypeRetRepr(signature.returnType);
    llvm:FunctionType ty = {
        returnType: retReprTypes[repr],
        paramTypes: paramTypes.cloneReadOnly()
    };
    return ty;
}

function buildConstNil() returns llvm:Value {
    return llvm:constNull(LLVM_NIL_TYPE);
}

function buildConstBoolean(boolean b) returns llvm:Value {
    return llvm:constInt(LLVM_BOOLEAN, b ? 1 : 0);
}

function semTypeRetRepr(t:SemType ty) returns RetRepr|BuildError {
    if ty === t:NIL {
        return REPR_VOID;
    }
    return semTypeRepr(ty);
}

// Return the representation for a SemType.
function semTypeRepr(t:SemType ty) returns Repr|BuildError {
    if ty === t:INT {
        return REPR_INT;
    }
    else if ty === t:BOOLEAN {
        return REPR_BOOLEAN;
    }
    // This happens with the code generated for potential panics.
    else if ty === t:ERROR {
        return REPR_ERROR;
    }
    else if ty === t:NIL || ty === t:TOP {
        return REPR_TAGGED;
    }
    return err:unimplemented("unimplemented type");
}

function mangleRuntimeSymbol(string name) returns string {
    return "_bal_" + name;
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
