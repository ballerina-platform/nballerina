import ballerina/jballerina.java;

public distinct class Context {
    handle LLVMContext;
    private final map<handle> namedStructTypes = {};
    public function init() {
        self.LLVMContext = jLLVMContextCreate();
        self.initializeLLVMTargets();
    }

    public function createBuilder() returns Builder {
        return new (self);
    }

    public function createModule(string? name = ()) returns Module {
        string modName = name ?: "";
        return new (modName, self);
    }

    public function constString(byte[] bytes) returns ConstValue {
        return new (jLLVMConstStringInContext(self.LLVMContext, java:fromString(checkpanic string:fromBytes(bytes)), bytes.length(), 1));
    }

    public function constStruct(Value[] elements) returns ConstValue {
        PointerPointer elementArray = PointerPointerFromValues(elements);
        return new (jLLVMConstStructInContext(self.LLVMContext, elementArray.jObject, elements.length(), 0));
    }

    public function constGetElementPtr(ConstPointerValue ptr, ConstValue[] indices, "inbounds"? inbounds=()) returns ConstPointerValue {
        PointerPointer arr = PointerPointerFromValues(indices);
        if inbounds != () {
            return new (jLLVMConstInBoundsGEP(ptr.LLVMValueRef, arr.jObject, indices.length()));
        } 
        else {
            return new (jLLVMConstGEP(ptr.LLVMValueRef, arr.jObject, indices.length()));
        }
    }

    public function constBitCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        return new (jLLVMConstBitCast(ptr.LLVMValueRef, typeToLLVMType(destTy, self)));
    }

    public function costAddrSpaceCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        return new (jLLVMConstAddrSpaceCast(ptr.LLVMValueRef, typeToLLVMType(destTy, self)));
    }

    public function structCreateNamed(string name, Type[] elementTypes) returns StructType {
        if self.namedStructTypes.hasKey(name) {
            panic error("Type by that name already exists");
        }
        StructType balType = {name: name, elementTypes: elementTypes.cloneReadOnly()};
        handle jType = jLLVMStructCreateNamed(self.LLVMContext, java:fromString(name));
        PointerPointer elements = PointerPointerFromTypes(elementTypes);
        jLLVMStructSetBody(jType, elements.jObject, elementTypes.length(), 0);
        self.namedStructTypes[name] = jType;
        return balType;
    }

    function namedStructTypeToLLVMType(string name) returns handle {
        handle? jType = self.namedStructTypes[name];
        if jType is handle {
            return jType;
        } else {
            panic error("Type by that name is unknown");
        }
    }

    // Use to initialize target information to help compiling directly to object file
    function initializeLLVMTargets() {
        jLLVMInitializeAllTargetInfos();
        jLLVMInitializeAllTargets();
        jLLVMInitializeAllTargetMCs();
        jLLVMInitializeAllAsmParsers();
        jLLVMInitializeAllAsmPrinters();
    }
}

function jLLVMContextCreate() returns handle = @java:Method {
    name: "LLVMContextCreate",
    'class: "org.bytedeco.llvm.global.LLVM"
} external;

function jLLVMConstStringInContext(handle context, handle str, int length, int donTNullTerminate) returns handle = @java:Method {
    name: "LLVMConstStringInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "java.lang.String", "int", "int"]
} external;

function jLLVMConstStructInContext(handle context, handle values, int count, int packed) returns handle = @java:Method {
    name: "LLVMConstStructInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;

function jLLVMConstGEP(handle pointer, handle indices, int numIndices) returns handle = @java:Method {
    name: "LLVMConstGEP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int"]
} external;

function jLLVMConstInBoundsGEP(handle pointer, handle indices, int numIndices) returns handle = @java:Method {
    name: "LLVMConstInBoundsGEP",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int"]
} external;

function jLLVMConstBitCast(handle val, handle destTy) returns handle = @java:Method {
    name: "LLVMConstBitCast",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function jLLVMConstAddrSpaceCast(handle val, handle destTy) returns handle = @java:Method {
    name: "LLVMConstAddrSpaceCast",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function jLLVMInitializeAllTargetInfos() = @java:Method {
    name: "LLVMInitializeAllTargetInfos",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInitializeAllTargets() = @java:Method {
    name: "LLVMInitializeAllTargets",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInitializeAllTargetMCs() = @java:Method {
    name: "LLVMInitializeAllTargetMCs",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInitializeAllAsmPrinters() = @java:Method {
    name: "LLVMInitializeAllAsmPrinters",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInitializeAllAsmParsers() = @java:Method {
    name: "LLVMInitializeAllAsmParsers",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
function jLLVMStructCreateNamed(handle context, handle name) returns handle = @java:Method {
    name: "LLVMStructCreateNamed",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef", "java.lang.String"]
} external;

function jLLVMStructSetBody(handle ty, handle elements, int elementCount, int packed) = @java:Method {
    name: "LLVMStructSetBody",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;
