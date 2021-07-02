import ballerina/jballerina.java;

public type IntType "i64"|"i32"|"i8"|"i1";

public type Alignment 1|2|4|8|16;

public type PointerType readonly & record {|
    Type pointsTo;
    int addressSpace;
|};

public type IntegralType IntType|PointerType;

public function pointerType(Type ty, int addressSpace = 0) returns PointerType {
    return {pointsTo: ty, addressSpace};
}

public type ArrayType readonly & record {|
    Type elementType;
    int elementCount;
|};

public function arrayType(Type ty, int elementCount) returns ArrayType {
    return {elementType: ty, elementCount: elementCount};
}

// Corresponds to llvm::StructType
public type StructType readonly & record {
    Type[] elementTypes;
};

public function structType(Type[] elementTypes) returns StructType {
    return {elementTypes: elementTypes.cloneReadOnly()};
}

function getTypeAtIndex(StructType ty, int index) returns Type {
    return ty.elementTypes[index];
}

public type Type IntType|PointerType|StructType|ArrayType|"void";

function typeToLLVMType(Type ty) returns handle {
    if ty is PointerType {
        handle baseType = typeToLLVMType(ty.pointsTo);
        return create_llvm_pointer_type(baseType, ty.addressSpace);
    }
    if ty is StructType {
        PointerPointer typeArr = PointerPointerFromTypes(ty.elementTypes);
        int elementCount = ty.elementTypes.length();
        return create_llvm_struct_type(typeArr.jObject, elementCount, 0);
    }
    if ty is ArrayType {
        handle elementType = typeToLLVMType(ty.elementType);
        return create_llvm_array_type(elementType, ty.elementCount);
    }
    match ty {
        "void" => {
            return create_llvm_void();
        }
        "i1" => {
            return create_llvm_i1();
        }
        "i8" => {
            return create_llvm_i8();
        }
        "i32" => {
            return create_llvm_i32();
        }
        "i64" => {
            return create_llvm_i64();
        }
        _ => {
            panic error(string `Type: ${<string>ty} is not implemented`);
        }
    }
}

public function constInt(Type ty, int value) returns Value {
    Value val = new (create_llvm_const_i64(typeToLLVMType(ty), value, 0));
    return val;
}

public function constNull(PointerType ty) returns PointerValue {
    return new (create_llvm_const_pointer_null(typeToLLVMType(ty)));
}

public readonly distinct class Value {
    handle LLVMValueRef;

    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class PointerValue {
    *Value;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

function create_llvm_void() returns handle = @java:Method {
    name: "LLVMVoidType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function create_llvm_i64() returns handle = @java:Method {
    name: "LLVMInt64Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function create_llvm_i32() returns handle = @java:Method {
    name: "LLVMInt32Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function create_llvm_i8() returns handle = @java:Method {
    name: "LLVMInt8Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function create_llvm_i1() returns handle = @java:Method {
    name: "LLVMInt1Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function create_llvm_const_i64(handle ty, int value, int signExtend) returns handle = @java:Method {
    name: "LLVMConstInt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "long", "int"]
} external;

function create_llvm_const_pointer_null(handle ty) returns handle = @java:Method {
    name: "LLVMConstPointerNull",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function create_llvm_pointer_type(handle ty, int addressSpace) returns handle = @java:Method {
    name: "LLVMPointerType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "int"]
} external;

function create_llvm_array_type(handle elementType, int elementCount) returns handle = @java:Method {
    name: "LLVMArrayType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "int"]
} external;

function create_llvm_struct_type(handle elementTypes, int elementCount, int packed) returns handle = @java:Method {
    name: "LLVMStructType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;
