import ballerina/jballerina.java;

public type FunctionType readonly & record {|
    Type returnType;
    Type[] paramTypes;
|};

function toLLVmFunctionType(FunctionType fnType, Context context) returns handle {
    int paramCount = fnType.paramTypes.length();
    PointerPointer paramType = new (paramCount);
    foreach var ty in fnType.paramTypes {
        paramType.put(typeToLLVMType(ty));
    }
    return create_llvm_functionType(typeToLLVMType(fnType.returnType), paramType.jObject, paramCount, 0);
}

// LLVM C-API don't differentiate between function declarations and definitions
public type FunctionDefn Function;

public type FunctionDecl Function;

public type Linkage "internal"|"external";

function linkageToInt(Linkage linkage) returns int {
    match linkage {
        "external" => {
            return 0;
        }
        "internal" => {
            return 8;
        }
    }
    panic error(string `${<string>linkage} not implemented`);
}

public type EnumAttribute "noreturn"|"cold"|"nounwind"|"readnone"|"speculatable"|"willreturn"; //FIXME: add others

public distinct class Function {
    handle LLVMFunction;
    FunctionType fnType;
    Context context;
    function init(handle llvmFunction, FunctionType fnType, Context context) {
        self.LLVMFunction = llvmFunction;
        set_function_call_convention(llvmFunction, 0);
        self.fnType = fnType;
        self.context = context;
    }

    public function getParam(int index) returns Value {
        if self.fnType.paramTypes[index] is PointerType {
            PointerValue val = new (llvm_get_param(self.LLVMFunction, index));
            return val;
        } else {
            return new (llvm_get_param(self.LLVMFunction, index));
        }
    }

    public function appendBasicBlock(string? label = ()) returns BasicBlock {
        string bbLabel = label ?: "";
        BasicBlock bb = new (llvm_append_basic_block(self.context.LLVMContext, self.LLVMFunction, java:fromString(bbLabel)));
        return bb;
    }

    public function setLinkage(Linkage linkage) {
        int linkageVal = linkageToInt(linkage);
        llvm_set_linkage(self.LLVMFunction, linkageVal);
    }

    public function addEnumAttribute(EnumAttribute attribute) {
        handle attributeName = java:fromString(attribute);
        int attrKind = llvm_get_enum_attribute_for_name(attributeName, (<string>attribute).length());
        handle attr = llvm_create_enum_attribute(self.context.LLVMContext, attrKind, 0);
        llvm_add_attribute_at_index(self.LLVMFunction, -1, attr);
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

function llvm_set_linkage(handle global, int linkage) = @java:Method {
    name: "LLVMSetLinkage",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function llvm_get_enum_attribute_for_name(handle name, int length) returns int = @java:Method {
    name: "LLVMGetEnumAttributeKindForName",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "long"]
} external;

function llvm_create_enum_attribute(handle context, int kind, int val) returns handle = @java:Method {
    name: "LLVMCreateEnumAttribute",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "int", "long"]
} external;

function llvm_add_attribute_at_index(handle fn, int idx, handle attribute) = @java:Method {
    name: "LLVMAddAttributeAtIndex",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int", "org.bytedeco.llvm.LLVM.LLVMAttributeRef"]
} external;
