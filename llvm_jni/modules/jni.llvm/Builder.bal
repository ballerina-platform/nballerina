import ballerina/jballerina.java;

public type BinaryIntOp BinaryArithmeticOp|BinaryBitwiseOp;

public type BinaryArithmeticOp "add"|"mul"|"sub"|"sdiv"|"srem";

public type BinaryBitwiseOp "xor"|"or"|"and";

public distinct class Builder {
    handle LLVMBuilder;

    function init(Context context) {
        self.LLVMBuilder = create_llvm_builderRef(context.LLVMContext);
    }

    public function positionAtEnd(BasicBlock bb) {
        llvm_position_at_end(self.LLVMBuilder, bb.LLVMBasicBlockRef);
    }

    public function binaryInt(BinaryIntOp op, Value lhs, Value rhs, string name) returns Value {
        match op {
            "sub" => {
                Value val = new (llvm_sub(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(name)));
                return val;
            }
            "add" => {
                Value val = new (llvm_add(self.LLVMBuilder, lhs.LLVMValueRef, rhs.LLVMValueRef, java:fromString(name)));
                return val;
            }
        }
        panic error("op not implemented");
    }

    public function ret(Value val) {
        _ = llvm_ret(self.LLVMBuilder, val.LLVMValueRef);
    }
}

function create_llvm_builderRef(handle context) returns handle = @java:Method {
    name: "LLVMCreateBuilderInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function llvm_position_at_end(handle builder, handle bb) = @java:Method {
    name: "LLVMPositionBuilderAtEnd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMBasicBlockRef"]
} external;

function llvm_sub(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildSub",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_add(handle builder, handle lhs, handle rhs, handle name) returns handle = @java:Method {
    name: "LLVMBuildAdd",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function llvm_ret(handle builder, handle val) returns handle = @java:Method {
    name: "LLVMBuildRet",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMBuilderRef", "org.bytedeco.llvm.LLVM.LLVMValueRef"]
} external;
