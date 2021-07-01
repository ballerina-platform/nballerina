import ballerina/jballerina.java;

public type Type "i1"|"i64"|"void";

distinct class TypeRef {
    handle llvmType;

    function init(Type ty) {
        match ty {
            "void" => {
                self.llvmType = create_llvm_void();
            }
            "i1" => {
                self.llvmType = create_llvm_i1();
            }
            "i64" => {
                self.llvmType = create_llvm_i64();
            }
            _ => {
                self.llvmType = create_llvm_void(); // Used to avoid compiler throwing uninitialized field error
                panic error(string `Type: ${<string>ty} is not implemented`);
            }
        }
    }
}

public function constInt(Type ty, int value) returns Value {
    TypeRef typeRef = new (ty);
    Value val = new (create_llvm_const_i64(typeRef.llvmType, value, 0));
    return val;
}

public distinct class Value {
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
