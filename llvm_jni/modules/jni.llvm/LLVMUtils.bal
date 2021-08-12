import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;

// The peer class to native pointers and arrays of void*
// Used to represent arrays
distinct class PointerPointer {
    handle jObject;
    int index;
    int size;

    function init(int size) {
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

function PointerPointerFromTypes(Type[] values) returns PointerPointer {
    PointerPointer arr = new (values.length());
    foreach var val in values {
        arr.put(typeToLLVMType(val));
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

    // Corresponds to LLVMCreateMemoryBufferWithContentsOfFile
    function storeFileInBuffer(string filePath) returns error? {
        BytePointer libPath = new(jBytePointerFromString(java:fromString(filePath)));
        BytePointer fileLoadError = new(jBytePointer());
        int loadResult = jLLVMCreateMemoryBufferWithContentsOfFile(libPath.jObject, self.jObject, fileLoadError.jObject);
        if loadResult != 0 {
            return error(fileLoadError.toString());
        }
    }

    function storeResource(string resourcePath) {
        // TODO: validate the input stream
        // handle|error byteArray = jReadAllBytes(jGetResourceAsStream(jGetClassLoader(jGetClass(holder)),java:fromString(resourcePath)));
        // if byteArray is error {
        //     io:println("error:", byteArray);
        // }
        handle inputStream = jGetResourceAsStream(jGetClassLoader(jGetClass(self.jObject)),java:fromString(resourcePath));
        byte[] buffer = [];
        byte[] inputBytes = [];
        buffer[32] = 0;
        handle bufferHandle = checkpanic jarrays:toHandle(buffer, "byte");
        int bytesRead = checkpanic jRead(inputStream, bufferHandle);
        while bytesRead > 0 {
            buffer = <byte[]> checkpanic jarrays:fromHandle(bufferHandle, "byte");
            inputBytes.push(...buffer.slice(0, bytesRead));
            bufferHandle = checkpanic jarrays:toHandle(buffer, "byte");
            bytesRead = checkpanic jRead(inputStream, bufferHandle);
        }
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

function jLLVMCreateMemoryBufferWithContentsOfFile(handle path, handle outMemoryBuf, handle outMessage) returns int = @java:Method {
    name: "LLVMCreateMemoryBufferWithContentsOfFile",
    'class: "org.bytedeco.llvm.global.LLVM",
    paramTypes: ["org.bytedeco.javacpp.BytePointer", "org.bytedeco.llvm.LLVM.LLVMMemoryBufferRef", "org.bytedeco.javacpp.BytePointer"]
} external;
