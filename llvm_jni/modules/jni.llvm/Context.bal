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
}

function LLVMContextCreate() returns handle = @java:Method {
    name: "LLVMContextCreate",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;
