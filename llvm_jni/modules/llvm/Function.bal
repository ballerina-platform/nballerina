import ballerina/jballerina.java;

public type FunctionType readonly & record {|
    Type returnType;
    Type[] paramTypes;
|};

function toLLVmFunctionType(FunctionType fnType, Context context) returns handle {
    TypeRef returnType = new (fnType.returnType);
    int paramCount = fnType.paramTypes.length();
    PointerPointer paramType = new(paramCount);
    foreach var ty in fnType.paramTypes {
        TypeRef tyRef = new (ty);
        paramType.put(tyRef.llvmType);
    }
    return create_llvm_functionType(returnType.llvmType, paramType.jObject, paramCount, 0);
}

public distinct class Function {
    handle LLVMFunction;
    FunctionType fnType;
    Context context;
    public function init(handle llvmFunction, FunctionType fnType, Context context) {
        self.LLVMFunction = llvmFunction;
        set_function_call_convention(llvmFunction, 0);
        self.fnType = fnType;
	self.context = context;
    }

    public function getParam(int index) returns Value {
        Value val = new (llvm_get_param(self.LLVMFunction, index));
        return val;
    }

    public function appendBasicBlock(string? label=()) returns BasicBlock {
        string bbLabel = label ?: "";
	    BasicBlock bb = new(llvm_append_basic_block(self.context.LLVMContext, self.LLVMFunction, java:fromString(bbLabel)));
	    return bb;
    }
}

public distinct class BasicBlock {
    handle LLVMBasicBlockRef;
    function init(handle bbRef) {
        self.LLVMBasicBlockRef = bbRef;
    }
}

function create_llvm_functionType(handle returnType, handle paramTypes, int paramCount, int isVarArg) returns handle = @java:Method {
    name: "LLVMFunctionType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;

function set_function_call_convention(handle fn, int callConvention) = @java:Method {
    name: "LLVMSetFunctionCallConv",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function llvm_get_param(handle fn, int index) returns handle = @java:Method {
    name: "LLVMGetParam",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function llvm_append_basic_block(handle context, handle fn, handle label) returns handle = @java:Method {
    name: "LLVMAppendBasicBlockInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;
