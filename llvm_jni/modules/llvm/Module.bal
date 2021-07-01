import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

public distinct class Module {
    handle LLVMModule;
    Context context;

    function init(string moduleName, Context context) {
        self.context = context;
        self.LLVMModule = create_llvm_moduleRef(java:fromString(moduleName), context.LLVMContext);
    }

    public function addFunction(string fnName, FunctionType fnType) returns Function {
        handle llvmFunction = add_function(self.LLVMModule, java:fromString(fnName), toLLVmFunctionType(fnType, self.context));
        Function fn = new (llvmFunction, fnType, self.context);
        return fn;
    }

    public function printModuleToFile(string fileName) returns error?{
        byte[] e = [];
        _ = module_to_file(self.LLVMModule, java:fromString(fileName), check jarrays:toHandle(e, "byte"));
    }
    
    public function printModuleToString() returns string {
        BytePointer bytePointer = new(module_to_string(self.LLVMModule));
        return bytePointer.toString();
    }
}

function create_llvm_moduleRef(handle moduleId, handle context) returns handle = @java:Method {
    name: "LLVMModuleCreateWithNameInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function add_function(handle moduleRef, handle functionName, handle functionType) returns handle = @java:Method {
    name: "LLVMAddFunction",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String", "org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function module_to_file(handle moduleRef, handle fileName, handle er) returns int = @java:Method {
    name: "LLVMPrintModuleToFile",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef", "java.lang.String", "[B"]
} external;

function module_to_string(handle moduleRef) returns handle = @java:Method {
    name: "LLVMPrintModuleToString",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMModuleRef"]
} external;