import ballerina/jballerina.java;


function typeToLLVMType(RetType ty, Context? context) returns handle {
    if ty is PointerType {
        handle baseType = typeToLLVMType(ty.pointsTo, context);
        return jLLVMPointerType(baseType, ty.addressSpace);
    }
    if ty is StructType {
        if ty.name is () {
            PointerPointer typeArr = PointerPointerFromTypes(ty.elementTypes);
            int elementCount = ty.elementTypes.length();
            return jLLVMStructType(typeArr.jObject, elementCount, 0);
        }
        else {
            if context is Context {
                string name = <string>ty.name;
                return context.namedStructTypeToLLVMType(name);
            }
            else {
                panic error("Can't convert named struct type without context");
            }
        }
    }
    if ty is ArrayType {
        handle elementType = typeToLLVMType(ty.elementType, context);
        return jLLVMArrayType(elementType, ty.elementCount);
    }
    match ty {
        "void" => {
            return jLLVMVoidType();
        }
        "i1" => {
            return jLLVMInt1Type();
        }
        "i8" => {
            return jLLVMInt8Type();
        }
        "i16" => {
            return jLLVMInt16Type();
        }
        "i32" => {
            return jLLVMInt32Type();
        }
        "i64" => {
            return jLLVMInt64Type();
        }
        "double" => {
            return jLLVMDoubleType();
        }
        _ => {
            panic error(string `Type: ${<string>ty} is not implemented`);
        }
    }
}

public function constInt(Type ty, int value) returns ConstValue {
    Value val = new (jLLVMConstInt(typeToLLVMType(ty, ()), value, 0));
    return val;
}


public function constFloat(FloatType ty, float val) returns ConstValue {
   return new (jLLVMConstReal(typeToLLVMType(ty), val));
}

public function constNull(PointerType ty) returns PointerValue {
    return new (jLLVMConstPointerNull(typeToLLVMType(ty, ())));
}

public readonly distinct class Value {
    handle LLVMValueRef;

    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class PointerValue {
    *Value;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class ConstValue {
    *Value;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

public readonly class ConstPointerValue {
    *Value;
    *PointerValue;
    handle LLVMValueRef;
    function init(handle valueRef) {
        self.LLVMValueRef = valueRef;
    }
}

function jLLVMVoidType() returns handle = @java:Method {
    name: "LLVMVoidType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMDoubleType() returns handle = @java:Method {
    name: "LLVMDoubleType",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInt64Type() returns handle = @java:Method {
    name: "LLVMInt64Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInt32Type() returns handle = @java:Method {
    name: "LLVMInt32Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInt16Type() returns handle = @java:Method {
    name: "LLVMInt16Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInt8Type() returns handle = @java:Method {
    name: "LLVMInt8Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
} external;

function jLLVMInt1Type() returns handle = @java:Method {
    name: "LLVMInt1Type",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: []
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
