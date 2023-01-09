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
const int TAG_BOOLEAN  = t:BT_BOOLEAN << TAG_SHIFT;
const int TAG_INT      = t:BT_INT << TAG_SHIFT;
const int TAG_FLOAT    = t:BT_FLOAT << TAG_SHIFT;
const int TAG_DECIMAL  = t:BT_DECIMAL << TAG_SHIFT;
const int TAG_STRING   = t:BT_STRING << TAG_SHIFT;
const int TAG_ERROR    = t:BT_ERROR << TAG_SHIFT;

const int TAG_LIST     = t:BT_LIST << TAG_SHIFT;

const int TAG_BASIC_TYPE_MASK = 0xf << TAG_SHIFT;

const int FLAG_IMMEDIATE = 0x20 << TAG_SHIFT;
const int FLAG_EXACT = 0x4;

const int IMMEDIATE_INT_MIN = -(1 << (TAG_SHIFT - 1));
const int IMMEDIATE_INT_MAX = (1 << (TAG_SHIFT - 1)) - 1;

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

final t:BasicTypeBitSet POTENTIALLY_EXACT = t:basicTypeUnion(t:LIST|t:MAPPING);

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

final bir:ModuleId runtimeModule = {
    org: "ballerinai",
    names: ["runtime"]
};

function buildCheckPanicCode(llvm:Builder builder, Scaffold scaffold, llvm:Value valWithErr, bir:Position pos) returns llvm:Value {
    llvm:BasicBlock continueBlock = scaffold.addBasicBlock();
    llvm:BasicBlock errBlock = scaffold.addBasicBlock();
    llvm:Value panicCode = builder.extractValue(valWithErr, 1);
    builder.condBr(builder.iCmp("ne", panicCode, constI64(scaffold, 0)), errBlock, continueBlock);
    builder.positionAtEnd(errBlock);
    builder.store(buildErrorForPanic(builder, scaffold, panicCode, pos), scaffold.panicAddress());
    builder.br(scaffold.getOnPanic());
    builder.positionAtEnd(continueBlock);
    return builder.extractValue(valWithErr, 0);
}

function buildErrorForConstPanic(llvm:Builder builder, Scaffold scaffold, PanicIndex panicIndex, bir:Position pos) returns llvm:PointerValue {
    return buildErrorForPackedPanic(builder, scaffold, constInt(scaffold, panicIndex | (scaffold.lineNumber(pos) << 8)));
}

function buildErrorForPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value panicIndex, bir:Position pos) returns llvm:PointerValue {
    return buildErrorForPackedPanic(builder, scaffold, builder.iBitwise("or", panicIndex, constInt(scaffold, scaffold.lineNumber(pos) << 8)));
}

function buildErrorForPackedPanic(llvm:Builder builder, Scaffold scaffold, llvm:Value packedPanic) returns llvm:PointerValue {
    scaffold.useDebugLocation(builder, DEBUG_USAGE_ERROR_CONSTRUCT);
    var err = <llvm:PointerValue>builder.call(scaffold.getRuntimeFunctionDecl(panicConstructFunction), [packedPanic]);
    scaffold.clearDebugLocation(builder);
    return err;
}

function buildStoreRepr(llvm:Builder builder, Scaffold scaffold, llvm:Value value, bir:Register reg, Repr sourceRepr) {
    match sourceRepr.base {
        BASE_REPR_INT => {
            buildStoreInt(builder, scaffold, value, reg);
        }
        BASE_REPR_FLOAT => {
            buildStoreFloat(builder, scaffold, value, reg);
        }
        BASE_REPR_BOOLEAN => {
            buildStoreBoolean(builder, scaffold, value, reg);
        }
        BASE_REPR_TAGGED => {
            buildStoreTagged(builder, scaffold, value, reg);
        }
        _ => {
            panic err:impossible("unreached in buildStoreRepr");
        }
    }
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
    builder.store(scaffold.getRepr(reg).base == BASE_REPR_TAGGED ? buildTaggedBoolean(builder, scaffold, value) : value,
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
    t:BasicTypeBitSet sourceStructUniformTypes = t:widenToBasicTypes(sourceStructType);
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
    return buildRuntimeFunctionCall(builder, scaffold, rf, [tagged]);
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
    if sourceRepr.base == targetRepr.base {
        return value;
    }
    if targetRepr is TaggedRepr {
        if sourceRepr is IntRepr {
            if sourceRepr.alwaysInImmediateRange {
                return buildImmediateTaggedInt(builder, scaffold, value);
            }
            else {
                return buildTaggedInt(builder, scaffold, value);
            }
        }
        else if sourceRepr is FloatRepr {
            return buildTaggedFloat(builder, scaffold, value);
        }
        else if sourceRepr is BooleanRepr {
            return buildTaggedBoolean(builder, scaffold, value);
        }
    }
    // this shouldn't ever happen I think
    panic err:impossible("unimplemented conversion required");
}

function buildTaggedBoolean(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:Value {
    return builder.getElementPtr(constNilTaggedPtr(scaffold),
                                     [builder.iBitwise("or",
                                                       builder.zExt(value, LLVM_INT),
                                                       constInt(scaffold, TAG_BOOLEAN))]);
}

function buildTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, intToTaggedFunction, [value]);
}

// only use when compile time know that IMMEDIATE_INT_MIN <= value && value <= IMMEDIATE_INT_MAX
function buildImmediateTaggedInt(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    var low56 = builder.iBitwise("and", constInt(scaffold, (1 << TAG_SHIFT) - 1), value);
    var tagged = builder.iBitwise("or", constInt(scaffold, FLAG_IMMEDIATE | TAG_INT), low56);
    return builder.getElementPtr(constNilTaggedPtr(scaffold), [tagged]);
}

function buildTaggedFloat(llvm:Builder builder, Scaffold scaffold, llvm:Value value) returns llvm:PointerValue {
    return <llvm:PointerValue>buildRuntimeFunctionCall(builder, scaffold, floatToTaggedFunction, [value]);
}

function buildTaggedPtr(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue mem, int tag) returns llvm:PointerValue {
    return builder.getElementPtr(mem, [constInt(scaffold, tag)]);
}

function buildHasTag(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, int tag) returns llvm:Value {
    return buildTestTag(builder, scaffold, tagged, tag, TAG_MASK);    
}

function buildTestTag(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged, int tag, int mask) returns llvm:Value {
    return builder.iCmp("eq", builder.iBitwise("and", buildTaggedPtrToInt(builder, tagged),
                                                       constInt(scaffold, mask)),
                              constInt(scaffold, tag));

}

function buildUntagInt(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return buildRuntimeFunctionCall(builder, scaffold, taggedToIntFunction, [tagged]);
}

function buildUntagFloat(llvm:Builder builder, Scaffold scaffold, llvm:PointerValue tagged) returns llvm:Value {
    return buildRuntimeFunctionCall(builder, scaffold, taggedToFloatFunction, [tagged]);
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
            byte[] bytes = value.toBytes();
            int nBytes = bytes.length();
            boolean alwaysImmediate = isSmallString(value.length(), bytes, nBytes);
            TaggedRepr repr = { subtype: t:STRING, alwaysImmediate };
            return [repr, check buildConstString(builder, scaffold, value)];
        }
        else if value == () {
            return [REPR_NIL, constNil(scaffold)];
        }
        else if value is boolean {
            return [REPR_BOOLEAN, constBoolean(scaffold, value)];
        }
        else if value is int {
            boolean alwaysInImmediateRange = IMMEDIATE_INT_MIN <= value && value <= IMMEDIATE_INT_MAX;
            IntRepr repr = { constraints: { min: value, max: value, all: true }, alwaysInImmediateRange };
            return [repr, constInt(scaffold, value)];
        }
        else if value is float {
            return [REPR_FLOAT, constFloat(scaffold, value)];
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
    return builder.getElementPtr(builder.addrSpaceCast(scaffold.getDecimal(decimalValue), LLVM_TAGGED_PTR), [constInt(scaffold, TAG_DECIMAL)]);
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
        return constInt(scaffold, operand.value);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
}

// Build a value as REPR_BOOLEAN
function buildBoolean(llvm:Builder builder, Scaffold scaffold, bir:BooleanOperand operand) returns llvm:Value {
    if operand is bir:BooleanConstOperand {
        return constBoolean(scaffold, operand.value);
    }
    else {
        return builder.load(scaffold.address(operand));
    }
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
    llvm:Value masked = <llvm:Value>builder.call(scaffold.getIntrinsicFunction("ptrmask.p1.i64"), [taggedPtr, constInt(scaffold, FLAG_EXACT)]);
    return builder.iCmp("ne", masked, scaffold.llContext().constNull(llvm:pointerType("i8", 1)));
}
