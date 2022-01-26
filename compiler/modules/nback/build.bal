import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.llvm;

type Alignment 1|8;

// Pointer tagging
const TAG_SHIFT = 56;
const ALIGN_HEAP = 8;
// JBUG #28334 type-descriptor is not needed
const int POINTER_MASK = ((1 << TAG_SHIFT) - 1) & ~(ALIGN_HEAP - 1);

const int TAG_MASK     = 0x1f << TAG_SHIFT;
const int TAG_NIL      = 0;
const int TAG_BOOLEAN  = t:UT_BOOLEAN << TAG_SHIFT;
const int TAG_INT      = t:UT_INT << TAG_SHIFT;
const int TAG_FLOAT    = t:UT_FLOAT << TAG_SHIFT;
const int TAG_DECIMAL  = t:UT_DECIMAL << TAG_SHIFT;
const int TAG_STRING   = t:UT_STRING << TAG_SHIFT;
const int TAG_ERROR   = t:UT_ERROR << TAG_SHIFT;

const int TAG_LIST_RW  = t:UT_LIST_RW << TAG_SHIFT;

const int TAG_BASIC_TYPE_MASK = 0xf << TAG_SHIFT;

const int FLAG_IMMEDIATE = 0x20 << TAG_SHIFT;
const int FLAG_EXACT = 0x4;

const HEAP_ADDR_SPACE = 1;

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

final llvm:StructType LLVM_TAGGED_WITH_PANIC_CODE = llvm:structType([LLVM_TAGGED_PTR, LLVM_INT]);

final t:UniformTypeBitSet POTENTIALLY_EXACT = t:uniformTypeUnion(t:LIST_RW|t:MAPPING_RW);

type RuntimeFunction readonly & record {|
    string name;
    llvm:FunctionType ty;
    llvm:EnumAttribute[] attrs;
|};

final RuntimeFunction panicConstructFunction = {
    name: "panic_construct",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: ["i64"]
    },
    attrs: ["cold"]
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

final RuntimeFunction taggedClearExactAnyFunction = {
    name: "tagged_clear_exact_any",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readnone"]
};

final RuntimeFunction taggedClearExactPtrFunction = {
    name: "tagged_clear_exact_ptr",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_TAGGED_PTR]
    },
    attrs: ["readnone"]
};

final RuntimeFunction decimalConstFunction = {
    name: "decimal_const",
    ty: {
        returnType: LLVM_TAGGED_PTR,
        paramTypes: [LLVM_DECIMAL_CONST]
    },
    attrs: ["readonly"]
};

final bir:ModuleId runtimeModule = {
    org: "ballerinai",
    names: ["runtime"]
};

function buildCheckPanicCode(llvm:Builder builder, Scaffold scaffold, llvm:Value valWithErr, bir:Position pos) returns llvm:Value {
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errBlock = scaffold.addBasicBlock();
    llvm:Value panicCode = builder.extractValue(valWithErr, 1);
    builder.condBr(builder.iCmp("ne", panicCode, llvm:constInt("i64", 0)), errBlock, continueBlock);
    builder.positionAtEnd(errBlock);
    builder.store(buildErrorForPanic(builder, scaffold, panicCode, pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    return builder.extractValue(valWithErr, 0);
}

function buildErrorForConstPanic(llvm:Builder builder, Scaffold scaffold, PanicIndex panicIndex, bir:Position pos) returns llvm:PointerValue {
    return buildErrorForPackedPanic(builder, scaffold, llvm:constInt(LLVM_INT, panicIndex | (scaffold.lineNumber(pos) << 8)), pos);
}

function buildErrorForPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value panicIndex, bir:Position pos) returns llvm:PointerValue {
    return buildErrorForPackedPanic(builder, scaffold, builder.iBitwise("or", panicIndex, llvm:constInt(LLVM_INT, scaffold.lineNumber(pos) << 8)), pos);
}

function buildErrorForPackedPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value packedPanic, bir:Position pos) returns llvm:PointerValue {
    scaffold.setDebugLocation(builder, pos, DEBUG_ORIGIN_ERROR_CONSTRUCT);
    var err = <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(panicConstructFunction), [packedPanic]);
    scaffold.clearDebugLocation(builder);
    return err;
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

function buildStoreDecimal(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg) {
    builder.store(value, scaffold.address(reg));
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
    if operand is bir:Register && operationWidens(scaffold, operand, targetType) {
        value = buildClearExact(builder, scaffold, value, operand.semType);
    }
    return value;
}

function operationWidens(Scaffold scaffold, bir:Register operand, t:SemType targetType) returns boolean {
    t:SemType sourceStructType = t:intersect(operand.semType, POTENTIALLY_EXACT);
    t:UniformTypeBitSet sourceStructUniformTypes = t:widenToUniformTypes(sourceStructType);
    if sourceStructUniformTypes == t:NEVER {
        return false;
    }
    // Going from e.g. `int[]` to `int[]|map<any>` does not lose exactness,
    // but going from e.g. `int[]|map<int>` to `int[]|map<any>` does.
    t:SemType targetStructType = t:intersect(targetType, sourceStructUniformTypes);
    if t:isNever(targetStructType) {
        return false;
    }
    // Is the sourceStructType a _proper_ subtype of the targetStructType?
    // Note that we already know that sourceStructType is a subtype of targetStructType,
    // so we need to check that targetStructType is not a subtype of sourceStructType.
    return sourceStructType != targetStructType && !t:isSubtype(scaffold.typeContext(), targetStructType, sourceStructType);
}

function buildClearExact(llvm:Builder builder, Scaffold scaffold, llvm:Value tagged, t:SemType sourceType) returns llvm:Value {
    RuntimeFunction rf = overloadsExactBit(sourceType) ? taggedClearExactAnyFunction : taggedClearExactPtrFunction;
    return <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(rf), [tagged]);
}

// Does the tagged representation of semType use the exact bit for other purposes
// (i.e. as part of immediate variant)
function overloadsExactBit(t:SemType semType) returns boolean {
    return !t:isNever(t:intersect(semType, t:union(t:STRING, t:INT)));
}

function isPotentiallyExact(t:SemType semType) returns boolean {
    return !t:isNever(t:intersect(semType, POTENTIALLY_EXACT));
}

function buildRepr(llvm:Builder builder, Scaffold scaffold, bir:Operand operand, Repr targetRepr) returns llvm:Value|BuildError {
    var [sourceRepr, value] = check buildReprValue(builder, scaffold, operand);
    return buildConvertRepr(builder, scaffold, sourceRepr, value, targetRepr);
}

function buildConvertRepr(llvm:Builder builder, Scaffold scaffold, Repr sourceRepr, llvm:Value value, Repr targetRepr) returns llvm:Value {
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
    panic err:impossible("unimplemented conversion required");
}

function buildTaggedBoolean(llvm:Builder builder, llvm:Value value) returns llvm:Value {
    return builder.getElementPtr(llvm:constNull(LLVM_TAGGED_PTR),
                                     [builder.iBitwise("or",
                                                       builder.zExt(value, LLVM_INT),
                                                       llvm:constInt(LLVM_INT, TAG_BOOLEAN))]);
}

function buildTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(intToTaggedFunction), [value]);
}

function buildTaggedFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(floatToTaggedFunction), [value]);
}

function buildTaggedPtr(llvm:Builder builder, llvm:PointerValue mem, int tag) returns llvm:PointerValue {
    return builder.getElementPtr(mem, [llvm:constInt(LLVM_INT, tag)]);
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
    return <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(taggedToIntFunction), [tagged]);
}

function buildUntagFloat(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(taggedToFloatFunction), [tagged]);
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
    else {
        t:SingleValue value = operand.value;
        if value is string {
            return [REPR_STRING, check buildConstString(builder, scaffold, value)];
        }
        else if value == () {
            return [REPR_NIL, buildConstNil()];
        }
        else if value is boolean {
            return [REPR_BOOLEAN, llvm:constInt(LLVM_BOOLEAN, value ? 1 : 0)];
        }
        else if value is int {
            return [REPR_INT, llvm:constInt(LLVM_INT, value)];
        }
        else if value is float {
            return [REPR_FLOAT, llvm:constFloat(LLVM_DOUBLE, value)];
        }
        else {
            decimal _ = value;
            return [REPR_DECIMAL, buildConstDecimal(builder, scaffold, value)];
        }
    }
}

function buildConstString(llvm:Builder builder, Scaffold scaffold, string str) returns llvm:ConstPointerValue|BuildError {   
    return scaffold.getString(str);
}

function buildLoad(llvm:Builder builder, Scaffold scaffold, bir:Register reg) returns [Repr, llvm:Value] {
    return [scaffold.getRepr(reg), builder.load(scaffold.address(reg))];
}

function buildConstDecimal(llvm:Builder builder, Scaffold scaffold, decimal decimalValue) returns llvm:Value {
    return <llvm:Value>builder.call(scaffold.getRuntimeFunctionDecl(decimalConstFunction), [scaffold.getDecimal(decimalValue)]);
}

function buildString(llvm:Builder builder, Scaffold scaffold, bir:StringOperand operand) returns llvm:Value|BuildError {
    if operand is bir:StringConstOperand {
        return buildConstString(builder, scaffold, operand.value);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

// Build a value as REPR_INT
function buildInt(llvm:Builder builder, Scaffold scaffold, bir:IntOperand operand) returns llvm:Value {
    if operand is bir:IntConstOperand {
        return llvm:constInt(LLVM_INT, operand.value);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

// Build a value as REPR_BOOLEAN
function buildBoolean(llvm:Builder builder, Scaffold scaffold, bir:BooleanOperand operand) returns llvm:Value {
    if operand is bir:BooleanConstOperand {
        return llvm:constInt(LLVM_BOOLEAN, operand.value ? 1 : 0);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
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

function buildFunctionSignature(bir:FunctionSignature signature) returns llvm:FunctionType {
    llvm:Type[] paramTypes = from var ty in signature.paramTypes select (semTypeRepr(ty)).llvm;
    RetRepr repr = semTypeRetRepr(signature.returnType);
    llvm:FunctionType ty = {
        returnType: repr.llvm,
        paramTypes: paramTypes.cloneReadOnly()
    };
    return ty;
}

function buildIsExact(llvm:Builder builder, Scaffold scaffold, llvm:Value taggedPtr) returns llvm:Value {
    llvm:Value masked = <llvm:Value>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1i8.i64"), [taggedPtr, llvm:constInt(LLVM_INT, FLAG_EXACT)]);
    return builder.iCmp("ne", masked, llvm:constNull(llvm:pointerType("i8", 1)));
}
