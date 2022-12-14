import ballerina/jballerina.java;
import nballerina.comm.err as err;

public distinct class Context {
    handle LLVMContext;
    private final map<[handle, StructType]> namedStructTypes = {};
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

    public function constInt(Type ty, int value) returns ConstValue {
        DataValue val = new (jLLVMConstInt(typeToLLVMType(self, ty), value, 0));
        return val;
    }

    public function constFloat(FloatType ty, float val) returns ConstValue {
       return new (jLLVMConstReal(typeToLLVMType(self, ty), val));
    }

    public function constNull(PointerType ty) returns PointerValue {
        return new (jLLVMConstPointerNull(typeToLLVMType(self, ty)));
    }

    public function constString(byte[] bytes) returns ConstValue {
        return new (jLLVMConstStringInContext(self.LLVMContext, java:fromString(checkpanic string:fromBytes(bytes)), bytes.length(), 1));
    }

    public function constStruct(Value[] elements) returns ConstValue {
        PointerPointer elementArray = PointerPointerFromValues(elements);
        return new (jLLVMConstStructInContext(self.LLVMContext, elementArray.jObject, elements.length(), 0));
    }

    public function constArray(Type elementType, ConstValue[] values) returns ConstValue {
        PointerPointer elements = PointerPointerFromValues(values);
        handle ty = typeToLLVMType(self, elementType);
        return new (jLLVMConstArray(ty, elements.jObject, values.length()));
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
        return new (jLLVMConstBitCast(ptr.LLVMValueRef, typeToLLVMType(self, destTy)));
    }

    public function constAddrSpaceCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        return new (jLLVMConstAddrSpaceCast(ptr.LLVMValueRef, typeToLLVMType(self, destTy)));
    }

    public function constPtrToInt(ConstPointerValue constantValue, IntType toType) returns ConstValue {
        return new (jLLVMConstPtrToInt(constantValue.LLVMValueRef, typeToLLVMType(self, toType)));
    }

    public function structCreateNamed(string name) returns StructType {
        if self.namedStructTypes.hasKey(name) {
            panic err:illegalArgument("type by that name already exists");
        }
        StructType balType = { elementTypes: [] };
        handle jType = jLLVMStructCreateNamed(self.LLVMContext, java:fromString(name));
        self.namedStructTypes[name] = [jType, balType];
        return balType;
    }

    public function structSetBody(StructType namedStructTy, Type[] elementTypes) {
        foreach var entry in self.namedStructTypes.entries() {
            var data = entry[1];
            if data[1] === namedStructTy {
                handle jType = data[0];
                PointerPointer elements = PointerPointerFromTypes(self, elementTypes);
                jLLVMStructSetBody(jType, elements.jObject, elementTypes.length(), 0);
                return;
            }
        }
        panic err:illegalArgument("no such named struct type");
    }

    function namedStructTypeToLLVMType(StructType ty) returns handle? {
        foreach var entry in self.namedStructTypes.entries() {
            var data = entry[1];
            if data[1] === ty {
                return data[0];
            }
        }
        return ();
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

function jLLVMConstArray(handle elementTy, handle values, int count) returns handle = @java:Method {
    name: "LLVMConstArray",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.javacpp.PointerPointer", "int"]
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
} external;

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

function jLLVMConstPtrToInt(handle constValue, handle toType) returns handle = @java:Method {
    name: "LLVMConstPtrToInt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;
