// This contains the common definitions for both print.llvm and jni.llvm

// "i64" corresponds to  LLVMInt64Type
// "i8" corresponds to LLVMInt8Type
// "i1" corresponds to LLVMInt1Type
public type IntType "i64"|"i32"|"i8"|"i1";

// Used to constrain parameters that represent an alignment
public type Alignment 1|2|4|8|16;

// Corresponds to LLVMPointerType
public type PointerType readonly & record {|
    Type pointsTo;
    int addressSpace;
|};

public type IntegralType IntType|PointerType;

// Corresponds to LLVMPointerType function
public function pointerType(Type ty, int addressSpace = 0) returns PointerType {
    return { pointsTo: ty, addressSpace };
}

// Corresponds to LLVMArrayType
public type ArrayType readonly & record {|
    Type elementType;
    int elementCount;
|};

public function arrayType(Type ty, int elementCount) returns ArrayType {
    return { elementType: ty, elementCount: elementCount };
}

// Corresponds to llvm::StructType
public type StructType readonly & record {
    Type[] elementTypes;
};

public function structType(Type[] elementTypes) returns StructType {
    return { elementTypes: elementTypes.cloneReadOnly() };
}

function getTypeAtIndex(StructType ty, int index) returns Type {
    return ty.elementTypes[index];
}

public type Type IntType|PointerType|StructType|ArrayType;

// A RetType is valid only as the return type of a function
public type RetType Type|"void";

# Corresponds to llvm::FunctionType class
public type FunctionType readonly & record {|
    RetType returnType;
    Type[] paramTypes;
|};


// Corresponds to LLVMLinkage enum
public type Linkage "internal"|"external";
public type EnumAttribute "noreturn"|"cold"|"nounwind"|"readnone"|"speculatable"|"willreturn"; 

// Used with Builder.binaryInt
// Subtype of LLVMOpcode
public type BinaryIntOp BinaryArithmeticOp|BinaryBitwiseOp;
public type BinaryArithmeticOp "add"|"mul"|"sub"|"sdiv"|"srem";
public type BinaryBitwiseOp "xor"|"or"|"and";
// Corresponds to LLVMIntPredicate
public type IntPredicate "eq"|"ne"|"ugt"|"uge"|"ult"|"ule"|"sgt"|"sge"|"slt"|"sle";

public type IntegerArithmeticIntrinsicName "sadd.with.overflow.i64"|"ssub.with.overflow.i64"|"smul.with.overflow.i64";
public type GeneralIntrinsicName "ptrmask.p0i8.i64";

public type IntrinsicFunctionName IntegerArithmeticIntrinsicName|GeneralIntrinsicName;

public type TargetTriple string;