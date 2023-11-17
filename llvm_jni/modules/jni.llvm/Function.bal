import ballerina/jballerina.java;

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
    final handle LLVMValueRef;
    final FunctionType fnType;
    final Context context;
    final PointerType ty;
    final handle LLVMTypeRef;
    function init(handle llvmFunction, FunctionType fnType, Context context, handle llvmType) {
        self.LLVMValueRef = llvmFunction;
        jLLVMSetFunctionCallConv(llvmFunction, 0);
        self.fnType = fnType;
        self.context = context;
        self.ty = pointerType(fnType);
        self.LLVMTypeRef = llvmType;
    }

    public function getParam(int index) returns Value {
        Type paramTy = self.fnType.paramTypes[index];
        return new (jLLVMGetParam(self.LLVMValueRef, index), paramTy);
    }

    public function appendBasicBlock(string? label = ()) returns BasicBlock {
        string bbLabel = label ?: "";
        BasicBlock bb = new (jLLVMAppendBasicBlockInContext(self.context.LLVMContext, self.LLVMValueRef, java:fromString(bbLabel)));
        return bb;
    }

    public function setLinkage(Linkage linkage) {
        int linkageVal = linkageToInt(linkage);
        jLLVMSetLinkage(self.LLVMValueRef, linkageVal);
    }

    public function addEnumAttribute(EnumAttribute attribute) {
        int index;
        string attributeContent;
        match attribute {
            ["return", var attr] => {
                index = 0;
                attributeContent = attr;
            }
            ["param", var i, var attr] => {
                index = i + 1;
                attributeContent = attr;
            }
            var attr => {
                index = -1;
                attributeContent = <FunctionEnumAttribute>attr;
            }
        }
        handle attributeName = java:fromString(attributeContent);
        int attrKind = jLLVMGetEnumAttributeKindForName(attributeName, attributeContent.length());
        handle attr = jLLVMCreateEnumAttribute(self.context.LLVMContext, attrKind, 0);
        jLLVMAddAttributeAtIndex(self.LLVMValueRef, index, attr);
    }

    public function setGC(string? name) {
        if name is string {
            jLLVMSetGC(self.LLVMValueRef, java:fromString(name));
        } 
        else {
            jLLVMSetGC(self.LLVMValueRef, java:fromString(""));
        }
    }

    public function setSubprogram(Metadata metadata) {
        jLLVMSetSubprogram(self.LLVMValueRef, metadata.llvmMetadata);
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

function jLLVMSetGC(handle fn, handle name) = @java:Method {
    name: "LLVMSetGC",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "java.lang.String"]
} external;

function jLLVMSetSubprogram(handle fn, handle sp) = @java:Method {
    name: "LLVMSetSubprogram",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMMetadataRef"]
} external;
