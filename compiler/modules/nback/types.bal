
import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

const USED_INHERENT_TYPE = 0x1;
const USED_TYPE_TEST = 0x2;

const LLVM_BITSET = "i32";
const LLVM_TID = "i32";


final llvm:StructType llInherentType = llvm:structType([LLVM_TID, LLVM_BITSET]);

// This is an approximation, but close enough since we are only accessing the pointer in C.
final llvm:StructType llTypeTestType = llvm:structType([LLVM_BITSET, LLVM_BITSET, llvm:arrayType(llvm:pointerType("i8"), 0)]);

final llvm:Type llListType = llvm:structType([heapPointerType(llInherentType),                       // *desc
                                              LLVM_INT,                                              // length
                                              LLVM_INT,                                              // capacity
                                              heapPointerType(llvm:arrayType(LLVM_TAGGED_PTR, 0))]); // *members

type TypeHowUsed USED_INHERENT_TYPE|USED_TYPE_TEST;

public type TypeUsage readonly & record {|
    t:SemType[] types;
    // or'ed from TypeHowUsed
    byte[] uses;
|};

type InitTypes readonly & record {|
    llvm:StructType subtypeTestVTable;
    llvm:PointerType subtypeTestVTablePtr;
    llvm:FunctionType subtypeTestFunction;
    llvm:PointerType subtypeTestFunctionPtr;
|};

// struct SubtypeTestVTable { bool (*func)(struct SubtypeTestVTable *, TaggedPtr); }
// struct SubtypeTestVTable *p;
// (p->func)(p, taggedPtr);
// struct FooVTable { bool (*func)(struct SubtypeTestVTable *, TaggedPtr); int32_t bitSet; }
// extern bool _bal_has_record_type(struct SubtypeTestVTable *, TaggedPtr);
// struct FooVTable subtypeTest1 = { _bal_record_subtype_contains, 256 };
function createInitTypes(llvm:Context cx) returns InitTypes {
    llvm:StructType subtypeTestVTable = cx.structCreateNamed("TypeTestVTable");
    llvm:PointerType subtypeTestVTablePtr = llvm:pointerType(subtypeTestVTable);
    llvm:FunctionType subtypeTestFunction = llvm:functionType(LLVM_BOOLEAN, [subtypeTestVTablePtr, LLVM_TAGGED_PTR]);
    llvm:PointerType subtypeTestFunctionPtr = llvm:pointerType(subtypeTestFunction);
    cx.structSetBody(subtypeTestVTable, [subtypeTestFunctionPtr]);
    return { subtypeTestVTable, subtypeTestVTablePtr, subtypeTestFunction, subtypeTestFunctionPtr };
}

function mangleTypeSymbol(bir:ModuleId modId, TypeHowUsed howUsed, int index) returns string {
    string result = howUsed == USED_INHERENT_TYPE ? "_Bi" : "_Bt";
    result += mangleOrg(modId.org);
    result += mangleModuleNames(modId.names);
    result += index.toString();
    return result;    
}
