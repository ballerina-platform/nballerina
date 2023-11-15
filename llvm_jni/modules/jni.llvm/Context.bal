import ballerina/jballerina.java;
import nballerina.comm.err as err;

type NamedStructTyMemo record {|
    handle llvmTypeRef;
    StructType ty;
    Type[] elementTypes;
|};

public distinct class Context {
    handle LLVMContext;
    private final map<NamedStructTyMemo> namedStructTypes = {};
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
        return new (jLLVMConstInt(typeToLLVMType(self, ty), value, 0), ty, value);
    }

    public function constFloat(FloatType ty, float val) returns ConstValue {
       return new (jLLVMConstReal(typeToLLVMType(self, ty), val), ty);
    }

    public function constNull(PointerType ty) returns ConstPointerValue {
        return new (jLLVMConstPointerNull(typeToLLVMType(self, ty)), ty);
    }

    public function constString(byte[] bytes) returns ConstValue {
        return new (jLLVMConstStringInContext(self.LLVMContext, java:fromString(checkpanic string:fromBytes(bytes)), bytes.length(), 1), arrayType("i8", bytes.length()));
    }

    public function constStruct(Value[] elements, StructType? ty = ()) returns ConstValue {
        if ty != () && ty.name != () {
            return new(jLLVMConstNamedStruct(typeToLLVMType(self, ty), PointerPointerFromValues(elements).jObject,
                                             elements.length()),
                       ty);
        }
        return new (jLLVMConstStructInContext(self.LLVMContext, PointerPointerFromValues(elements).jObject,
                                              elements.length(), 0),
                    structType(from var element in elements select element.ty));
    }

    public function constArray(Type elementType, ConstValue[] values) returns ConstValue {
        return new (jLLVMConstArray(typeToLLVMType(self, elementType), PointerPointerFromValues(values).jObject, values.length()), arrayType(elementType, values.length()));
    }

    public function constGetElementPtr(ConstPointerValue ptr, ConstValue[] indices, "inbounds"? inbounds=()) returns ConstPointerValue {
        var builderFn = inbounds != () ? jLLVMConstInBoundsGEP : jLLVMConstGEP;
        return new (builderFn(typeToLLVMType(self, ptr.ty.pointsTo), ptr.LLVMValueRef, PointerPointerFromValues(indices).jObject, indices.length()), gepResultType(self, ptr, indices));
    }

    public function constBitCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        return new (jLLVMConstBitCast(ptr.LLVMValueRef, typeToLLVMType(self, destTy)), destTy);
    }

    public function constAddrSpaceCast(ConstPointerValue ptr, PointerType destTy) returns ConstPointerValue {
        return new (jLLVMConstAddrSpaceCast(ptr.LLVMValueRef, typeToLLVMType(self, destTy)), destTy);
    }

    public function constPtrToInt(ConstPointerValue constantValue, IntType toType) returns ConstValue {
        return new (jLLVMConstPtrToInt(constantValue.LLVMValueRef, typeToLLVMType(self, toType)), toType);
    }

    public function structCreateNamed(string name) returns StructType {
        if self.namedStructTypes.hasKey(name) {
            panic err:illegalArgument("type by that name already exists");
        }
        StructType ty = { name, elementTypes: [] };
        handle llvmTypeRef = jLLVMStructCreateNamed(self.LLVMContext, java:fromString(name));
        self.namedStructTypes[name] = { llvmTypeRef, ty, elementTypes: [] };
        return ty;
    }

    public function structSetBody(StructType namedStructTy, Type[] elementTypes) {
        string name = <string>namedStructTy.name;
        var { llvmTypeRef, ty } = self.namedStructTypes.get(name);
        jLLVMStructSetBody(llvmTypeRef, PointerPointerFromTypes(self, elementTypes).jObject, elementTypes.length(), 0);
        self.namedStructTypes[name] = { llvmTypeRef, ty, elementTypes };
    }

    function namedStructTypeToLLVMType(StructType ty) returns handle? {
        string? name = ty.name;
        if name == () || !self.namedStructTypes.hasKey(name) {
            return ();
        }
        return self.namedStructTypes.get(name).llvmTypeRef;
    }

    function getNamedStructBody(StructType ty) returns Type[] {
        string? tyName = ty.name;
        if tyName is string {
            return self.namedStructTypes.get(tyName).elementTypes;
        }
        panic err:illegalArgument("not a named struct type");
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

function jLLVMConstNamedStruct(handle typeRef, handle values, int count) returns handle = @java:Method {
    name: "LLVMConstNamedStruct",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.javacpp.PointerPointer", "int"]
} external;

function jLLVMConstGEP(handle ty, handle pointer, handle indices, int numIndices) returns handle = @java:Method {
    name: "LLVMConstGEP2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int"]
} external;

function jLLVMConstInBoundsGEP(handle ty, handle pointer, handle indices, int numIndices) returns handle = @java:Method {
    name: "LLVMConstInBoundsGEP2",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "org.bytedeco.llvm.LLVM.LLVMValueRef", "org.bytedeco.javacpp.PointerPointer", "int"]
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
