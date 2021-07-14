import ballerina/jballerina.java;

public distinct class Context {
    handle LLVMContext;
    public function init() {
        self.LLVMContext = LLVMContextCreate();
    }

    public function createBuilder() returns Builder {
        return new (self);
    }

    public function createModule(string? name = ()) returns Module {
        string modName = name ?: "";
        return new (modName, self);
    }

    public function constString(byte[] bytes) returns PointerValue {
        return new (LLVMConstStringInContext(self.LLVMContext, java:fromString(checkpanic string:fromBytes(bytes)), bytes.length(), 1));
    }
}

function LLVMContextCreate() returns handle = @java:Method {
    name: "LLVMContextCreate",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function LLVMConstStringInContext(handle context, handle str, int length, int donTNullTerminate) returns handle = @java:Method {
    name: "LLVMConstStringInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "java.lang.String", "int", "int"]
} external;
