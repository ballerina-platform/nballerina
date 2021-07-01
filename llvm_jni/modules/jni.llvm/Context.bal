import ballerina/jballerina.java;

public distinct class Context {
    handle LLVMContext;
    public function init() {
        initializeLLVM();
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

function initializeLLVM() {
    llvm_link_initialize_core(llvm_get_global_pass_registry());
    llvm_link_in_MCJIT();
    _ = llvm_initialize_native_asm_printer();
    _ = llvm_initialize_native_asm_parser();
    _ = llvm_initialize_native_target();
}

function create_llvm_context() returns handle = @java:Method {
    name: "LLVMContextCreate",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function llvm_get_global_pass_registry() returns handle = @java:Method {
    name: "LLVMGetGlobalPassRegistry",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function llvm_link_initialize_core(handle passRegistryRef) = @java:Method {
    name: "LLVMInitializeCore",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMPassRegistryRef"]
} external;

function llvm_link_in_MCJIT() = @java:Method {
    name: "LLVMLinkInMCJIT",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function llvm_initialize_native_asm_printer() returns int = @java:Method {
    name: "LLVMInitializeNativeAsmPrinter",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function llvm_initialize_native_asm_parser() returns int = @java:Method {
    name: "LLVMInitializeNativeAsmParser",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function llvm_initialize_native_target() returns int = @java:Method {
    name: "LLVMInitializeNativeAsmParser",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;
