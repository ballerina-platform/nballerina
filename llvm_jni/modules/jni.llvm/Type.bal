import ballerina/jballerina.java;

function typeToLLVMType(Context context, RetType ty) returns handle {
    if ty is PointerType {
        handle baseType = typeToLLVMType(context, ty.pointsTo);
        return jLLVMPointerType(baseType, ty.addressSpace);
    }
    if ty is StructType {
        if context is Context {
            handle? namedTy = context.namedStructTypeToLLVMType(ty);
            if namedTy is handle {
                return namedTy;
            }
        }
        PointerPointer typeArr = PointerPointerFromTypes(context, ty.elementTypes);
        int elementCount = ty.elementTypes.length();
        return jLLVMStructType(typeArr.jObject, elementCount, 0);
    }
    if ty is ArrayType {
        handle elementType = typeToLLVMType(context, ty.elementType);
        return jLLVMArrayType(elementType, ty.elementCount);
    }
    if ty is FunctionType {
        handle returnType = typeToLLVMType(context, ty.returnType);
        PointerPointer paramTypeArr = PointerPointerFromTypes(context, ty.paramTypes);
        int paramTypeLen = ty.paramTypes.length();
        return jLLVMFunctionType(returnType, paramTypeArr.jObject, paramTypeLen, 0);
    }
    match ty {
        "void" => {
            return jLLVMVoidTypeInContext(context.LLVMContext);
        }
        "i1" => {
            return jLLVMInt1TypeInContext(context.LLVMContext);
        }
        "i8" => {
            return jLLVMInt8TypeInContext(context.LLVMContext);
        }
        "i16" => {
            return jLLVMInt16TypeInContext(context.LLVMContext);
        }
        "i32" => {
            return jLLVMInt32TypeInContext(context.LLVMContext);
        }
        "i64" => {
            return jLLVMInt64TypeInContext(context.LLVMContext);
        }
        "double" => {
            return jLLVMDoubleTypeInContext(context.LLVMContext);
        }
        _ => {
            panic error(string `Type: ${<string>ty} is not implemented`);
        }
    }
}

public type Value DataValue|Function;

public readonly distinct class DataValue {
    handle LLVMValueRef;

    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class PointerValue {
    *DataValue;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class ConstValue {
    *DataValue;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class ConstPointerValue {
    *DataValue;
    *PointerValue;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

function jLLVMVoidTypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMVoidTypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMDoubleTypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMDoubleTypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMInt64TypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMInt64TypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMInt32TypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMInt32TypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMInt16TypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMInt16TypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMInt8TypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMInt8TypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMInt1TypeInContext(handle contextRef) returns handle = @java:Method {
    name: "LLVMInt1TypeInContext",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMContextRef"]
} external;

function jLLVMConstInt(handle ty, int value, int signExtend) returns handle = @java:Method {
    name: "LLVMConstInt",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "long", "int"]
} external;


function jLLVMConstReal(handle ty, float value) returns handle = @java:Method {
    name: "LLVMConstReal",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "double"]
} external;

function jLLVMConstPointerNull(handle ty) returns handle = @java:Method {
    name: "LLVMConstPointerNull",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef"]
} external;

function jLLVMPointerType(handle ty, int addressSpace) returns handle = @java:Method {
    name: "LLVMPointerType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "int"]
} external;

function jLLVMArrayType(handle elementType, int elementCount) returns handle = @java:Method {
    name: "LLVMArrayType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.llvm.LLVM.LLVMTypeRef", "int"]
} external;

function jLLVMStructType(handle elementTypes, int elementCount, int packed) returns handle = @java:Method {
    name: "LLVMStructType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.javacpp.PointerPointer", "int", "int"]
} external;
