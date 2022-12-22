import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
// The peer class to native pointers and arrays of void*
// Used to represent arrays
distinct class PointerPointer {
    handle jObject;
    int index;
    int size;

    function init(int size) {
         _ = loadJavaCpp(checkpanic java:getClass("org.bytedeco.llvm.global.LLVM"));
        self.jObject = jPointerPointer(size);
        self.index = 0;
        self.size = size;
    }

    function put(handle obj) {
        if self.index == self.size {
            panic error("Pointer pointer overflow");
        }
        self.jObject = jPointerPointerPut(self.jObject, self.index, obj);
        self.index += 1;
    }
}

function PointerPointerFromValues(Value[] values) returns PointerPointer {
    PointerPointer arr = new (values.length());
    foreach var val in values {
        arr.put(val.LLVMValueRef);
    }
    return arr;
}

function PointerPointerFromTypes(Context context, Type[] values) returns PointerPointer {
    PointerPointer arr = new (values.length());
    foreach var val in values {
        arr.put(typeToLLVMType(context, val));
    }
    return arr;
}

function PointerPointerFromMetadata(Metadata[] values) returns PointerPointer {
    PointerPointer arr = new (values.length());
    foreach var val in values {
        arr.put(val.llvmMetadata);
    }
    return arr;
}

distinct class BytePointer {
    handle jObject;

    function init(handle jObject) {
        self.jObject = jObject;
    }

    function toString() returns string {
        return java:toString(jBytePointerGetString(self.jObject)) ?: "null";
    }
}

// Corresponds to LLVMMemoryBufferRef
distinct class LLVMMemoryBuffer {
    handle jObject;

    function init() {
        self.jObject = jMemoryBuffer();
    }

    function storeResource(string resourcePath) {
        handle inputStream = jGetResourceAsStream(jGetClassLoader(jGetClass(self.jObject)),java:fromString(resourcePath));
        byte[] buffer = [];
        byte[] inputBytes = [];
        buffer[128] = 0;
        handle bufferHandle = checkpanic jarrays:toHandle(buffer, "byte");
        int bytesRead = checkpanic jRead(inputStream, bufferHandle);
        while bytesRead > 0 {
            buffer = <byte[]> checkpanic jarrays:fromHandle(bufferHandle, "byte");
            inputBytes.push(...buffer.slice(0, bytesRead));
            bufferHandle = checkpanic jarrays:toHandle(buffer, "byte");
            bytesRead = checkpanic jRead(inputStream, bufferHandle);
        }
        BytePointer resourcePointer = new(jBytePointerFromByteArray(checkpanic jarrays:toHandle(inputBytes, "byte")));
        self.jObject = jLLVMCreateMemoryBufferWithMemoryRange(resourcePointer.jObject, inputBytes.length(), jBytePointerFromString(java:fromString("libBuffer")), 1);
    }
}

function getIntProp(int? prop) returns int {
    if prop is int {
        return prop;
    }
    return 0;
}

function getBooleanProp(boolean? prop) returns int {
    if prop is boolean {
        if prop {
            return 1;
        }
        else {
            return 0;
        }
    }
    return 0;
}

function getMetadataProp(Metadata? metadata) returns handle {
    if metadata is Metadata {
        return metadata.llvmMetadata;
    }
    else {
        return java:createNull();
    }
}

function getStringProp(string? prop) returns [handle, int] {
    if prop is string {
        return [java:fromString(prop), prop.length()];
    }
    else {
        return [java:fromString(""), 0];
    }
}

function jPointerPointer(int size) returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.PointerPointer",
    paramTypes: ["long"]
} external;

function jBytePointer() returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.BytePointer",
    paramTypes: []
} external;


function jMemoryBuffer() returns handle = @java:Constructor {
    'class: "org.bytedeco.llvm.LLVM.LLVMMemoryBufferRef",
    paramTypes: []
} external;

function jBytePointerFromString(handle str) returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.BytePointer",
    paramTypes: ["java.lang.String"]
} external;


function jBytePointerFromByteArray(handle arr) returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.BytePointer",
    paramTypes: ["[B"]
} external;

function jPointerPointerPut(handle receiver, int arg0, handle arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.bytedeco.javacpp.PointerPointer",
    paramTypes: ["long", "org.bytedeco.javacpp.Pointer"]
} external;

function jBytePointerGetString(handle receiver) returns handle = @java:Method {
    name: "getString",
    'class: "org.bytedeco.javacpp.BytePointer",
    paramTypes: []
} external;

function jLLVMCreateMemoryBufferWithMemoryRange(handle inputData, int inputDataLength, handle name, int nullTerminated) returns handle = @java:Method {
    name: "LLVMCreateMemoryBufferWithMemoryRange",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.javacpp.BytePointer", "long", "org.bytedeco.javacpp.BytePointer", "int"]
} external;
