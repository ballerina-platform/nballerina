// This file is the interface between init.bal and the rest of the backend.
// Goal is to keep this thin.

import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

const USED_INHERENT_TYPE = 0x1;
const USED_EXACTIFY = 0x2;
const USED_TYPE_TEST = 0x4;

const LLVM_BITSET = "i32";
const LLVM_TID = "i32";
const LLVM_MEMBER_TYPE = "i64";
const LLVM_PANIC_CODE = "i64";

final llvm:StructType llStructureDescType = llvm:structType([LLVM_TID]);
final llvm:PointerType llStructureDescPtrType = llvm:pointerType(llStructureDescType);

// This is an approximation, but close enough since we are only accessing the pointer in C.
final llvm:StructType llComplexType = llvm:structType([LLVM_BITSET, LLVM_BITSET, llvm:arrayType(llvm:pointerType("i8"), 0)]);

final readonly & llvm:FunctionType[] llListDescFuncTypes = [
    llvm:functionType(LLVM_TAGGED_PTR, [LLVM_TAGGED_PTR, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_TAGGED_PTR]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_TAGGED_PTR]),
    llvm:functionType(LLVM_INT, [LLVM_TAGGED_PTR, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_INT]),
    llvm:functionType(LLVM_FLOAT, [LLVM_TAGGED_PTR, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_FLOAT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_FLOAT])
];

type ListReprPrefix "generic"|"int_array"|"byte_array"|"float_array";

final readonly & string[] listDescFuncSuffixes = [
    "get_tagged",
    "set_tagged",
    "inexact_set_tagged",
    "get_int",
    "set_int",
    "inexact_set_int",
    "get_float",
    "set_float",
    "inexact_set_float"
];

final readonly & map<string?> listDescFuncOverrides = {
    int_array_get_float: (),
    int_array_inexact_set_tagged: "int_array_set_tagged",
    int_array_inexact_set_int: "int_array_set_int",
    int_array_inexact_set_float: "int_array_set_float",
    byte_array_get_float: (),
    byte_array_inexact_set_tagged: "byte_array_set_tagged",
    byte_array_inexact_set_int: "byte_array_set_int",
    byte_array_inexact_set_float: "byte_array_set_float",
    float_array_get_int: (),
    float_array_inexact_set_tagged: "float_array_set_tagged",
    float_array_inexact_set_int: "float_array_set_int",
    float_array_inexact_set_float: "float_array_set_float"
};

final llvm:StructType llListDescType = createLlListDescType();
final llvm:Type llListType = llvm:structType([llvm:pointerType(llListDescType),          // ListDesc *desc
                                              LLVM_INT,                                  // int64_t length
                                              LLVM_INT,                                  // int64_t capacity
                                              heapPointerType(llvm:pointerType("i8"))]); // union {TaggedPtr, int64_t, float} *members

type Context object {
    function llContext() returns llvm:Context;
};

type TypeHowUsed USED_INHERENT_TYPE|USED_EXACTIFY|USED_TYPE_TEST;

public type TypeUsage readonly & record {|
    t:SemType[] types;
    // or'ed from TypeHowUsed
    // for a USED_TYPE_TEST, the SemType must be complex
    byte[] uses;
|};

type InitTypes readonly & record {|
    llvm:StructType basicSubtype;
    llvm:PointerType basicSubtypePtr;
    llvm:FunctionType subtypeContainsFunction;
    llvm:PointerType subtypeContainsFunctionPtr;
|};

// struct BasicSubtype { bool (*contains)(struct BasicSubtype *, TaggedPtr); }
// struct BasicSubtype *p;
// (p->contains)(p, taggedPtr);
// struct FooSubtype { bool (*contains)(struct BasicSubtype *, TaggedPtr); int32_t bitSet; }
// extern bool _bal_record_subtype_contains(struct BasicSubtype *, TaggedPtr);
// struct FooSubtype subtype1 = { _bal_record_subtype_contains, 256 };
function createInitTypes(llvm:Context cx) returns InitTypes {
    llvm:StructType basicSubtype = cx.structCreateNamed("BasicSubtype");
    llvm:PointerType basicSubtypePtr = llvm:pointerType(basicSubtype);
    llvm:FunctionType subtypeContainsFunction = llvm:functionType(LLVM_BOOLEAN, [basicSubtypePtr, LLVM_TAGGED_PTR]);
    llvm:PointerType subtypeContainsFunctionPtr = llvm:pointerType(subtypeContainsFunction);
    cx.structSetBody(basicSubtype, [subtypeContainsFunctionPtr]);
    return { basicSubtype, basicSubtypePtr, subtypeContainsFunction, subtypeContainsFunctionPtr };
}

function createLlListDescType(int nMemberTypes = 0) returns llvm:StructType {
    // TID, nMemberTypes, minLength
    llvm:Type[] types = [LLVM_TID, "i32", "i64"];
    foreach var ty in llListDescFuncTypes {
        types.push(llvm:pointerType(ty));
    }
    // JBUG cast
    types.push(<llvm:Type>LLVM_MEMBER_TYPE);
    types.push(llStructureDescPtrType);
    types.push(llvm:arrayType(LLVM_MEMBER_TYPE, nMemberTypes));
    return llvm:structType(types);
}

function listAtomicTypeToListReprPrefix(t:ListAtomicType? atomic) returns ListReprPrefix {
    if atomic != () && atomic.members.fixedLength == 0 {
        t:SemType rest = t:cellInner(atomic.rest);
        if rest == t:INT {
            return "int_array";
        }
        else if rest == t:FLOAT {
            return "float_array";
        }
        else if rest == t:BYTE {
            return "byte_array";
        }
    }
    return "generic";
}

function mangleTypeSymbol(bir:ModuleId modId, TypeHowUsed howUsed, int index) returns string {
    string result = "_B";
    if howUsed == USED_INHERENT_TYPE {
        result += "i";
    }
    else if howUsed == USED_EXACTIFY {
        result += "e";
    }
    else {
        result += "t";
    }    
    result += mangleOrg(modId.org);
    result += mangleModuleNames(modId.names);
    result += index.toString();
    return result;    
}

function constNil(Context cx) returns llvm:ConstPointerValue => cx.llContext().constNull(LLVM_NIL_TYPE);

function constNilTaggedPtr(Context cx) returns llvm:ConstPointerValue => cx.llContext().constNull(LLVM_TAGGED_PTR);

function constBoolean(Context cx, boolean b) returns llvm:ConstValue => cx.llContext().constInt(LLVM_BOOLEAN, b ? 1 : 0);

function constInt(Context cx, int val) returns llvm:ConstValue => cx.llContext().constInt(LLVM_INT, val);

function constIndex(Context cx, int val) returns llvm:ConstValue => cx.llContext().constInt(LLVM_INDEX, val);

function constTid(InitModuleContext cx, int val) returns llvm:ConstValue => cx.llContext().constInt(LLVM_TID, val);

function constBitset(InitModuleContext cx, int val) returns llvm:ConstValue => cx.llContext().constInt(LLVM_BITSET, val);

function constMemberType(Context cx, int val) returns llvm:ConstValue => cx.llContext().constInt(LLVM_MEMBER_TYPE, val);

function constI64(Context cx, int val) returns llvm:ConstValue => cx.llContext().constInt("i64", val);

function constI32(Context cx, int val) returns llvm:ConstValue => cx.llContext().constInt("i32", val);

function constI16(Context cx, int val) returns llvm:ConstValue => cx.llContext().constInt("i16", val);

function constFloat(Context cx, float val) returns llvm:ConstValue => cx.llContext().constFloat(LLVM_FLOAT, val);

