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
final llvm:ConstPointerValue llNoFillerDesc = llvm:constNull(llStructureDescPtrType);

// This is an approximation, but close enough since we are only accessing the pointer in C.
final llvm:StructType llComplexType = llvm:structType([LLVM_BITSET, LLVM_BITSET, llvm:arrayType(llvm:pointerType("i8"), 0)]);

final readonly & llvm:FunctionType[6] llListDescFuncTypes = [
    llvm:functionType(LLVM_TAGGED_PTR, [LLVM_TAGGED_PTR, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_TAGGED_PTR]),
    llvm:functionType(LLVM_INT, [LLVM_TAGGED_PTR, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_INT]),
    llvm:functionType(LLVM_DOUBLE, [LLVM_TAGGED_PTR, LLVM_INT]),
    llvm:functionType(LLVM_PANIC_CODE, [LLVM_TAGGED_PTR, LLVM_INT, LLVM_DOUBLE])
];

type ListReprPrefix "generic"|"int_array"|"float_array";

final readonly & string[] listDescFuncSuffixes = [
    "get_tagged",
    "set_tagged",
    "get_int",
    "set_int",
    "get_float",
    "set_float"
];

final readonly & string[] listDescNullFuncNames = ["float_array_get_int", "int_array_get_float"];

final llvm:StructType llListDescType = createLlListDescType();
final llvm:Type llListType = llvm:structType([llvm:pointerType(llListDescType),          // ListDesc *desc
                                              LLVM_INT,                                  // int64_t length
                                              LLVM_INT,                                  // int64_t capacity
                                              heapPointerType(llvm:pointerType("i8"))]); // union {TaggedPtr, int64_t, float} *members

type TypeHowUsed USED_INHERENT_TYPE|USED_EXACTIFY|USED_TYPE_TEST;

public type TypeUsage readonly & record {|
    t:SemType[] types;
    // or'ed from TypeHowUsed
    // for a USED_TYPE_TEST, the SemType must be complex
    byte[] uses;
|};

type InitTypes readonly & record {|
    llvm:StructType uniformSubtype;
    llvm:PointerType uniformSubtypePtr;
    llvm:FunctionType subtypeContainsFunction;
    llvm:PointerType subtypeContainsFunctionPtr;
|};

// struct UniformSubtype { bool (*contains)(struct UniformSubtype *, TaggedPtr); }
// struct UniformSubtype *p;
// (p->contains)(p, taggedPtr);
// struct FooSubtype { bool (*contains)(struct UniformSubtype *, TaggedPtr); int32_t bitSet; }
// extern bool _bal_record_subtype_contains(struct UniformSubtype *, TaggedPtr);
// struct FooSubtype subtype1 = { _bal_record_subtype_contains, 256 };
function createInitTypes(llvm:Context cx) returns InitTypes {
    llvm:StructType uniformSubtype = cx.structCreateNamed("UniformSubtype");
    llvm:PointerType uniformSubtypePtr = llvm:pointerType(uniformSubtype);
    llvm:FunctionType subtypeContainsFunction = llvm:functionType(LLVM_BOOLEAN, [uniformSubtypePtr, LLVM_TAGGED_PTR]);
    llvm:PointerType subtypeContainsFunctionPtr = llvm:pointerType(subtypeContainsFunction);
    cx.structSetBody(uniformSubtype, [subtypeContainsFunctionPtr]);
    return { uniformSubtype, uniformSubtypePtr, subtypeContainsFunction, subtypeContainsFunctionPtr };
}

// When Ballerina gets the spread operator in list constructors,
// we can inline the one use of this.
function createLlListDescType() returns llvm:StructType {
    llvm:Type[] types = [LLVM_TID];
    foreach var ty in llListDescFuncTypes {
        types.push(llvm:pointerType(ty));
    }
    // JBUG cast
    types.push(<llvm:Type>LLVM_MEMBER_TYPE);
    types.push(llStructureDescPtrType);
    return llvm:structType(types);
}

function memberTypeToListReprPrefix(t:SemType memberType) returns ListReprPrefix {
    if memberType == t:INT {
        return "int_array";
    }
    else if memberType == t:FLOAT {
        return "float_array";
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
