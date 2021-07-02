import ballerina/jballerina.java;

public distinct class Context {
    handle LLVMContext;
    public function init() {
        self.LLVMContext = create_llvm_context();
    }

    public function createBuilder() returns Builder {
        return new (self);
    }

    public function createModule(string? name = ()) returns Module {
        string modName = name ?: "";
        return new (modName, self);
    }
}

function create_llvm_context() returns handle = @java:Method {
    name: "LLVMContextCreate",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function llvm_get_global_pass_registry() returns handle = @java:Method {
    name: "LLVMGetGlobalPassRegistry",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;
