import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

type Alignment 1|8;

// Pointer tagging
// JBUG #31394 would be better to use shifts for these
                     //1234567812345678
const TAG_FACTOR   = 0x0100000000000000;
const POINTER_MASK = 0x00fffffffffffff8;

const int TAG_MASK     = 0x1f * TAG_FACTOR;
const int TAG_NIL      = 0;
const int TAG_BOOLEAN  = t:UT_BOOLEAN * TAG_FACTOR;
const int TAG_INT      = t:UT_INT * TAG_FACTOR;
const int TAG_FLOAT    = t:UT_FLOAT * TAG_FACTOR;
const int TAG_STRING   = t:UT_STRING * TAG_FACTOR;
const int TAG_ERROR   = t:UT_ERROR * TAG_FACTOR;

const int TAG_LIST_RW  = t:UT_LIST_RW * TAG_FACTOR;

const int TAG_BASIC_TYPE_MASK = 0xf * TAG_FACTOR;
const int TAG_BASIC_TYPE_LIST = t:UT_LIST_RO * TAG_FACTOR;
const int TAG_BASIC_TYPE_MAPPING = t:UT_MAPPING_RO * TAG_FACTOR;

const int FLAG_IMMEDIATE = 0x20 * TAG_FACTOR;
const int FLAG_EXACT = 0x4;

const TAG_SHIFT = 56;

const HEAP_ADDR_SPACE = 1;
const ALIGN_HEAP = 8;

const LLVM_INT = "i64";
const LLVM_DOUBLE = "double";
const LLVM_BOOLEAN = "i1";
const LLVM_VOID = "void";

final llvm:PointerType LLVM_TAGGED_PTR = heapPointerType("i8");
final llvm:PointerType LLVM_NIL_TYPE = LLVM_TAGGED_PTR;
final llvm:PointerType LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE = llvm:pointerType("i8");

type ValueType llvm:IntegralType;

const PANIC_ARITHMETIC_OVERFLOW = 1;
const PANIC_DIVIDE_BY_ZERO = 2;
const PANIC_TYPE_CAST = 3;
const PANIC_STACK_OVERFLOW = 4;
const PANIC_INDEX_OUT_OF_BOUNDS = 5;
const PANIC_LIST_TOO_LONG = 6;
const PANIC_STRING_TOO_LONG = 7;
const PANIC_LIST_STORE = 8;
const PANIC_MAPPING_STORE = 9;

type PanicIndex PANIC_ARITHMETIC_OVERFLOW|PANIC_DIVIDE_BY_ZERO|PANIC_TYPE_CAST|PANIC_STACK_OVERFLOW|PANIC_INDEX_OUT_OF_BOUNDS;

type RuntimeFunctionName "panic"|"panic_construct"|"error_construct"|"alloc"|
                         "list_set"|"list_has_type"|
                         "mapping_set"|"mapping_get"|"mapping_init_member"|"mapping_construct"|"mapping_has_type"|
                         "int_to_tagged"|"tagged_to_int"|"float_to_tagged"|
                         "string_eq"|"string_cmp"|"string_concat"|"eq"|"exact_eq"|"float_eq"|"float_exact_eq"|"tagged_to_float"|"float_to_int"|
                         "int_compare"|"float_compare"|"string_compare"|"boolean_compare"|
                         "array_int_compare"|"array_float_compare"|"array_string_compare"|"array_boolean_compare";

type RuntimeFunction readonly & record {|
    RuntimeFunctionName name;
    llvm:FunctionType ty;
    llvm:EnumAttribute[] attrs;
|};

final RuntimeFunction panicFunction = {
    name: "panic",
    ty: {
        returnType: "void",
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["noreturn", "cold"]
};

final RuntimeFunction panicConstructFunction = {
    name: "panic_construct",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: ["cold"]
};

final RuntimeFunction errorConstructFunction = {
    name: "error_construct",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, "i64"]
    },
    attrs: []
};

final RuntimeFunction allocFunction = {
    name: "alloc",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: []
};

final RuntimeFunction intToTaggedFunction = {
    name: "int_to_tagged",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: [] // NB not readonly because it allocates storage
};

final RuntimeFunction floatToTaggedFunction = {
    name: "float_to_tagged",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["double"]
    },
    attrs: [] // NB not readonly because it allocates storage
};


final RuntimeFunction taggedToIntFunction = {
    name: "tagged_to_int",
    ty: {
        returnType: "i64",
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction taggedToFloatFunction = {
    name: "tagged_to_float",
    ty: {
        returnType: "double",
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readonly"]
};

final RuntimeFunction stringConcatFunction = {
    name: "string_concat",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR, LLVM_TAGGED_PTR]
    },
    attrs: []
};

final bir:ModuleId runtimeModule = {
    org: "ballerinai",
    names: ["runtime"]
};

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
    builder.ret(repr is Repr ? check buildWideRepr(builder, scaffold, insn.operand, repr, scaffold.returnType) : ());
}

function buildAbnormalRet(llvm:Builder builder, Scaffold scaffold, bir:AbnormalRetInsn insn) {
    buildCallPanic(builder, scaffold, <llvm:PointerValue>builder.load(scaffold.address(insn.operand)));
}

function buildPanic(llvm:Builder builder, Scaffold scaffold, bir:PanicInsn insn) {
    builder.store(builder.load(scaffold.address(insn.operand)), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
}

function buildCallPanic(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue err) {
    _ = builder.call(buildRuntimeFunctionDecl(scaffold, panicFunction), [err]);
    builder.unreachable();
}

function buildAssign(llvm:Builder builder, Scaffold scaffold, bir:AssignInsn insn) returns BuildError? {
    builder.store(check buildWideRepr(builder, scaffold, insn.operand, scaffold.getRepr(insn.result), insn.result.semType),
                  scaffold.address(insn.result));
}

function buildCall(llvm:Builder builder, Scaffold scaffold, bir:CallInsn insn) returns BuildError? {
    scaffold.setDebugLocation(builder, insn.position);
    // Handler indirect calls later
    bir:FunctionRef funcRef = <bir:FunctionRef>insn.func;
    llvm:Value[] args = [];
    bir:FunctionSignature signature = funcRef.erasedSignature;
    t:SemType[] paramTypes = signature.paramTypes;
    foreach int i in 0 ..< insn.args.length() {
        args.push(check buildWideRepr(builder, scaffold, insn.args[i], semTypeRepr(paramTypes[i]), paramTypes[i]));
    }

    bir:Symbol funcSymbol = funcRef.symbol;
    llvm:Function func;
    if funcSymbol is bir:InternalSymbol {
        func = scaffold.getFunctionDefn(funcSymbol.identifier);
    }
    else {
        func = check buildFunctionDecl(scaffold, funcSymbol, signature);
    }  
    llvm:Value? retValue = builder.call(func, args);
    RetRepr retRepr = semTypeRetRepr(signature.returnType);
    check buildStoreRet(builder, scaffold, retRepr, retValue, insn.result);
}

function buildErrorConstruct(llvm:Builder builder, Scaffold scaffold, bir:ErrorConstructInsn insn) returns BuildError? {
    scaffold.setDebugLocation(builder, insn.position, "file");
    llvm:Value value = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, errorConstructFunction),
                                                [
                                                    check buildString(builder, scaffold, insn.operand),
                                                    llvm:constInt(LLVM_INT, scaffold.lineNumber(insn.position))
                                                ]);
    builder.store(value, scaffold.address(insn.result));
}


function buildStringConcat(llvm:Builder builder, Scaffold scaffold, bir:StringConcatInsn insn) returns BuildError? {
    llvm:Value value = <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, stringConcatFunction),
                                                [
                                                    check buildString(builder, scaffold, insn.operands[0]),
                                                    check buildString(builder, scaffold, insn.operands[1])
                                                ]);
    builder.store(value, scaffold.address(insn.result));
}

function buildStoreRet(llvm:Builder builder, Scaffold scaffold, RetRepr retRepr, llvm:Value? retValue, bir:Register reg) returns BuildError? {
    if retRepr is Repr {
        builder.store(check buildConvertRepr(builder, scaffold, retRepr, <llvm:Value>retValue, scaffold.getRepr(reg)),
                      scaffold.address(reg));
    }
    else {
         builder.store(buildConstNil(), scaffold.address(reg));
    }
}

function buildFunctionDecl(Scaffold scaffold, bir:ExternalSymbol symbol, bir:FunctionSignature sig) returns llvm:FunctionDecl|BuildError {
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if !(decl is ()) {
        return decl;
    }
    else {
        // TODO: fix this: scaffold.location(0)
        llvm:FunctionType ty = check buildFunctionSignature(sig, scaffold.location(0));
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl d = mod.addFunctionDecl(mangleExternalSymbol(symbol), ty);
        scaffold.addImportedFunction(symbol, d);
        return d;
    }
}

function buildRuntimeFunctionDecl(Scaffold scaffold, RuntimeFunction rf) returns llvm:FunctionDecl {
    bir:ExternalSymbol symbol =  { module: runtimeModule, identifier: rf.name };
    llvm:FunctionDecl? decl = scaffold.getImportedFunction(symbol);
    if !(decl is ()) {
        return decl;
    }
    else {
        llvm:Module mod = scaffold.getModule();
        llvm:FunctionDecl f = mod.addFunctionDecl(mangleRuntimeSymbol(rf.name), rf.ty);
        foreach var attr in rf.attrs {
            f.addEnumAttribute(attr);
        }
        scaffold.addImportedFunction(symbol, f);
        return f;
    } 
}


function buildCondNarrow(llvm:Builder builder, Scaffold scaffold, bir:CondNarrowInsn insn) returns BuildError? {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, insn.operand);
    llvm:Value narrowed = check buildNarrowRepr(builder, scaffold, sourceRepr, value, scaffold.getRepr(insn.result));
    builder.store(narrowed, scaffold.address(insn.result));
}

function buildNarrowRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr) returns llvm:Value|BuildError {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    llvm:Value narrowed;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if sourceBaseRepr == BASE_REPR_TAGGED {
        return buildUntagged(builder, scaffold, <llvm:PointerValue>value, targetRepr);
    }
    return scaffold.unimplementedErr("unimplemented narrowing conversion required");
}

function buildErrorForConstPanic(llvm:Builder builder, Scaffold scaffold, PanicIndex panicIndex, bir:Position pos) returns llvm:PointerValue {
    // JBUG #31753 cast
    return buildErrorForPackedPanic(builder, scaffold, llvm:constInt(LLVM_INT, <int>panicIndex | (scaffold.lineNumber(pos) << 8)), pos);
}

function buildErrorForPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value panicIndex, bir:Position pos) returns llvm:PointerValue {
    return buildErrorForPackedPanic(builder, scaffold, builder.iBitwise("or", panicIndex, llvm:constInt(LLVM_INT, scaffold.lineNumber(pos) << 8)), pos);
}

function buildErrorForPackedPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value packedPanic, bir:Position pos) returns llvm:PointerValue {
    scaffold.setDebugLocation(builder, pos, "file");
    var err = <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, panicConstructFunction), [packedPanic]);
    scaffold.clearDebugLocation(builder);
    return err;
}

function buildBooleanNot(llvm:Builder builder, Scaffold scaffold, bir:BooleanNotInsn insn) {
    buildStoreBoolean(builder, scaffold,
                      builder.iBitwise("xor", llvm:constInt(LLVM_BOOLEAN, 1), builder.load(scaffold.address(insn.operand))),
                      insn.result);
}

function buildStoreInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg).base == BASE_REPR_TAGGED ? buildTaggedInt(builder, scaffold, value) : value,
                  scaffold.address(reg));
}

function buildStoreFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg).base == BASE_REPR_TAGGED ? buildTaggedFloat(builder, scaffold, value) : value,
                  scaffold.address(reg));
}

function buildStoreBoolean(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(scaffold.getRepr(reg).base == BASE_REPR_TAGGED ? buildTaggedBoolean(builder, value) : value,
                  scaffold.address(reg));
}

function buildStoreTagged(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    return builder.store(buildUntagged(builder, scaffold, <llvm:PointerValue>value, scaffold.getRepr(reg)), scaffold.address(reg));
}

function buildUntagged(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue value, Repr targetRepr) returns llvm:Value {
    match targetRepr.base {
        BASE_REPR_INT => {
            return buildUntagInt(builder, scaffold, value);
        }
        BASE_REPR_FLOAT => {
            return buildUntagFloat(builder, scaffold, value);
        }
        BASE_REPR_BOOLEAN => {
            return buildUntagBoolean(builder, value);
        }
        BASE_REPR_TAGGED => {
            return value;
        }
    }
    panic err:impossible("unreached in buildUntagged");
}

function buildWideRepr(llvm:Builder builder, Scaffold scaffold, bir:Operand operand, Repr targetRepr, t:SemType targetType) returns llvm:Value|BuildError {
    llvm:Value value = check buildRepr(builder, scaffold, operand, targetRepr);
    if targetRepr.base == BASE_REPR_TAGGED && operand is bir:Register {
        t:SemType listOrMappingRw = t:union(t:LIST_RW, t:MAPPING_RW);
        t:SemType targetStructType = t:intersect(targetType, listOrMappingRw);
        t:SemType sourceStructType =  t:intersect(operand.semType, listOrMappingRw);
        if !t:isNever(targetStructType) && !t:isNever(sourceStructType) {
            // Is the sourceStructType a proper subtype of the targetStructType?
            if sourceStructType != targetStructType && !t:isSubtype(scaffold.typeContext(), targetStructType, sourceStructType) {
                value = buildClearExact(builder, scaffold, value, targetRepr);
            }
        }
    }
    return value;
}

function buildClearExact(llvm:Builder builder, Scaffold scaffold, llvm:Value value, Repr targetRepr) returns llvm:Value {
    // SUBSET need to use targetRepr to handle unions including mappings and lists
    // JBUG <int> cast needed (otherwise result is or'd with 0xFF)
    return <llvm:Value>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"), [value, llvm:constInt(LLVM_INT, ~<int>FLAG_EXACT)]);
}

function buildRepr(llvm:Builder builder, Scaffold scaffold, bir:Operand operand, Repr targetRepr) returns llvm:Value|BuildError {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, operand);
    return buildConvertRepr(builder, scaffold, sourceRepr, value, targetRepr);
}

function buildConvertRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr) returns llvm:Value|BuildError {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if targetBaseRepr == BASE_REPR_TAGGED {
        if sourceBaseRepr == BASE_REPR_INT {
            return buildTaggedInt(builder, scaffold, value);
        }
        else if sourceBaseRepr == BASE_REPR_FLOAT {
            return buildTaggedFloat(builder, scaffold, value);
        }
        else if sourceBaseRepr == BASE_REPR_BOOLEAN {
            return buildTaggedBoolean(builder, value);
        }
    }
    // this shouldn't ever happen I think
    return scaffold.unimplementedErr("unimplemented conversion required");
}

function buildTaggedBoolean(llvm:Builder builder, llvm:Value value) returns llvm:Value {
    return builder.getElementPtr(llvm:constNull(LLVM_TAGGED_PTR),
                                     [builder.iBitwise("or",
                                                       builder.zExt(value, LLVM_INT),
                                                       llvm:constInt(LLVM_INT, TAG_BOOLEAN))]);
}

function buildTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, intToTaggedFunction), [value]);
}

function buildTaggedFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, floatToTaggedFunction), [value]);
}

function buildTaggedPtr(llvm:Builder builder, llvm:PointerValue mem, int tag) returns llvm:PointerValue {
    return builder.getElementPtr(mem, [llvm:constInt(LLVM_INT, tag)]);
}

function buildTypedAlloc(llvm:Builder builder, Scaffold scaffold, llvm:Type ty) returns llvm:PointerValue {
    return builder.bitCast(buildUntypedAlloc(builder, scaffold, ty), heapPointerType(ty));
}

function buildUntypedAlloc(llvm:Builder builder, Scaffold scaffold, llvm:Type ty) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(buildRuntimeFunctionDecl(scaffold, allocFunction),
                                           [llvm:constInt(LLVM_INT, typeSize(ty))]);
}

// XXX this should go in llvm module, because it needs to know about alignment
function typeSize(llvm:Type ty) returns int {
    if ty is llvm:PointerType || ty == "i64" {
        return 8;
    }
    else if ty is llvm:StructType {
        int size = 0;
        foreach var elemTy in ty.elementTypes {
            size += typeSize(elemTy);
        }
        return size;
    }
    else if ty is llvm:ArrayType {
        if ty.elementCount == 0 {
            panic error("cannot take size of 0-length array");
        }
        return ty.elementCount * typeSize(ty.elementType);
    }
    panic error("size of unsized type");
}

function buildHasTag(llvm:Builder builder, llvm:PointerValue tagged, int tag) returns llvm:Value {
    return buildTestTag(builder, tagged, tag, TAG_MASK);    
}

function buildTestTag(llvm:Builder builder, llvm:PointerValue tagged, int tag, int mask) returns llvm:Value {
    return builder.iCmp("eq", builder.iBitwise("and", buildTaggedPtrToInt(builder, tagged),
                                                       llvm:constInt(LLVM_INT, mask)),
                              llvm:constInt(LLVM_INT, tag));

}


function buildUntagInt(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, taggedToIntFunction), [tagged]);
}

function buildUntagFloat(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return <llvm:Value>builder.call(buildRuntimeFunctionDecl(scaffold, taggedToFloatFunction), [tagged]);
}

function buildUntagBoolean(llvm:Builder builder, llvm:PointerValue tagged) returns llvm:Value {
    return builder.trunc(buildTaggedPtrToInt(builder, tagged), LLVM_BOOLEAN);
}

function buildTaggedPtrToInt(llvm:Builder builder, llvm:PointerValue tagged) returns llvm:Value {
    return builder.ptrToInt(builder.addrSpaceCast(tagged, LLVM_TAGGED_PTR_WITHOUT_ADDR_SPACE), LLVM_INT);
}

function buildReprValue(llvm:Builder builder, Scaffold scaffold, bir:Operand operand) returns [Repr, llvm:Value]|BuildError {
    if operand is bir:Register {
        return buildLoad(builder, scaffold, operand);
    }
    else if operand is string {
        return [REPR_STRING, check buildConstString(builder, scaffold, operand)];
    }
    else {
        return buildSimpleConst(operand);
    }
}

function buildConstString(llvm:Builder builder, Scaffold scaffold, string str) returns llvm:ConstPointerValue|BuildError {   
    return check scaffold.getString(str);
}

function buildLoad(llvm:Builder builder, Scaffold scaffold, bir:Register reg) returns [Repr, llvm:Value] {
    return [scaffold.getRepr(reg), builder.load(scaffold.address(reg))];
}

function buildSimpleConst(bir:SimpleConstOperand operand) returns [Repr, llvm:Value] {
    if operand is int {
        return [REPR_INT, llvm:constInt(LLVM_INT, operand)];
    }
    else if operand is float {
        return [REPR_FLOAT, llvm:constFloat(LLVM_DOUBLE, operand)];
    }
    else if operand is () {
        return [REPR_NIL, buildConstNil()];
    }
    else {
        // operand is boolean
        return [REPR_BOOLEAN, llvm:constInt(LLVM_BOOLEAN, operand ? 1 : 0)];
    }
}

function buildString(llvm:Builder builder, Scaffold scaffold, bir:StringOperand operand) returns llvm:Value|BuildError {
    if operand is string {
        return buildConstString(builder, scaffold, operand);
    }
    else {
        return builder.load(scaffold.address(operand));
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

// Build a value as REPR_FLOAT
function buildFloat(llvm:Builder builder, Scaffold scaffold, bir:FloatOperand operand) returns llvm:Value {
    if operand is float {
        return llvm:constFloat(LLVM_DOUBLE, operand);
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

function buildFunctionSignature(bir:FunctionSignature signature, err:Location loc) returns llvm:FunctionType|BuildError {
    llvm:Type[] paramTypes = from var ty in signature.paramTypes select (semTypeRepr(ty)).llvm;
    RetRepr repr = semTypeRetRepr(signature.returnType);
    llvm:FunctionType ty = {
        returnType: repr.llvm,
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


function heapPointerType(llvm:Type ty) returns llvm:PointerType {
    return llvm:pointerType(ty, HEAP_ADDR_SPACE);
}
