import ballerina/jballerina.java;

function toLLVmFunctionType(FunctionType fnType, Context context) returns handle {
    int paramCount = fnType.paramTypes.length();
    PointerPointer paramType = new (paramCount);
    foreach var ty in fnType.paramTypes {
        paramType.put(typeToLLVMType(ty));
    }
    return jLLVMFunctionType(typeToLLVMType(fnType.returnType), paramType.jObject, paramCount, 0);
}

// LLVM C-API don't differentiate between function declarations and definitions
public type FunctionDefn Function;

public type FunctionDecl Function;

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

public distinct class Function {
    handle LLVMFunction;
    FunctionType fnType;
    Context context;
    function init(handle llvmFunction, FunctionType fnType, Context context) {
        self.LLVMFunction = llvmFunction;
        jLLVMSetFunctionCallConv(llvmFunction, 0);
        self.fnType = fnType;
        self.context = context;
    }

    public function getParam(int index) returns Value {
        return new (jLLVMGetParam(self.LLVMFunction, index));
    }

    public function appendBasicBlock(string? label = ()) returns BasicBlock {
        string bbLabel = label ?: "";
        BasicBlock bb = new (jLLVMAppendBasicBlockInContext(self.context.LLVMContext, self.LLVMFunction, java:fromString(bbLabel)));
        return bb;
    }

    public function setLinkage(Linkage linkage) {
        int linkageVal = linkageToInt(linkage);
        jLLVMSetLinkage(self.LLVMFunction, linkageVal);
    }

    public function addEnumAttribute(EnumAttribute attribute) {
        handle attributeName = java:fromString(attribute);
        int attrKind = jLLVMGetEnumAttributeKindForName(attributeName, (<string>attribute).length());
        handle attr = jLLVMCreateEnumAttribute(self.context.LLVMContext, attrKind, 0);
        jLLVMAddAttributeAtIndex(self.LLVMFunction, -1, attr);
    }
}

public distinct class BasicBlock {
    handle LLVMBasicBlockRef;
    function init(handle bbRef) {
        self.LLVMBasicBlockRef = bbRef;
    }
}

function jLLVMFunctionType(handle returnType, handle paramTypes, int paramCount, int isVarArg) returns handle = @java:Method {
    name: "LLVMFunctionType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;

function jLLVMSetFunctionCallConv(handle fn, int callConvention) = @java:Method {
    name: "LLVMSetFunctionCallConv",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function jLLVMGetParam(handle fn, int index) returns handle = @java:Method {
    name: "LLVMGetParam",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function jLLVMAppendBasicBlockInContext(handle context, handle fn, handle label) returns handle = @java:Method {
    name: "LLVMAppendBasicBlockInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMSetLinkage(handle global, int linkage) = @java:Method {
    name: "LLVMSetLinkage",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int"]
} external;

function jLLVMGetEnumAttributeKindForName(handle name, int length) returns int = @java:Method {
    name: "LLVMGetEnumAttributeKindForName",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["java.lang.String", "long"]
} external;

function jLLVMCreateEnumAttribute(handle context, int kind, int val) returns handle = @java:Method {
    name: "LLVMCreateEnumAttribute",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "int", "long"]
} external;

function jLLVMAddAttributeAtIndex(handle fn, int idx, handle attribute) = @java:Method {
    name: "LLVMAddAttributeAtIndex",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "int", "org.bytedeco.llvm.LLVM.LLVMAttributeRef"]
} external;
