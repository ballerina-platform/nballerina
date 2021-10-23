
import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.print.llvm;

const USED_INHERENT_TYPE = 0x1;
const USED_TYPE_TEST = 0x2;

const LLVM_BITSET = "i32";

final llvm:StructType llInherentType = llvm:structType([LLVM_BITSET]);
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
    llvm:StructType typeTestVTable;
    llvm:PointerType typeTestVTablePtr;
    llvm:FunctionType typeTestFunction;
    llvm:PointerType typeTestFunctionPtr;
|};

// struct TypeTestVTable { bool (*func)(struct TypeTestVTable *, TaggedPtr); }
// struct TypeTestVTable *p;
// (p->func)(p, taggedPtr);
// struct FooVTable { bool (*func)(struct TypeTestVTable *, TaggedPtr); int32_t bitSet; }
// extern bool _bal_has_record_type(struct TypeTestVTable *, TaggedPtr);
// struct FooVTable typeTest1 = { _bal_record_type_contains, 256 };
function createInitTypes(llvm:Context cx) returns InitTypes {
    llvm:StructType typeTestVTable = cx.structCreateNamed("TypeTestVTable");
    llvm:PointerType typeTestVTablePtr = llvm:pointerType(typeTestVTable);
    llvm:FunctionType typeTestFunction = llvm:functionType(LLVM_BOOLEAN, [typeTestVTablePtr, LLVM_TAGGED_PTR]);
    llvm:PointerType typeTestFunctionPtr = llvm:pointerType(typeTestFunction);
    cx.structSetBody(typeTestVTable, [typeTestFunctionPtr]);
    return { typeTestVTable, typeTestVTablePtr, typeTestFunction, typeTestFunctionPtr };
}

function mangleTypeSymbol(bir:ModuleId modId, TypeHowUsed howUsed, int index) returns string {
    string result = howUsed == USED_INHERENT_TYPE ? "_Bi" : "_Bt";
    result += mangleOrg(modId.org);
    result += mangleModuleNames(modId.names);
    result += index.toString();
    return result;    
}
