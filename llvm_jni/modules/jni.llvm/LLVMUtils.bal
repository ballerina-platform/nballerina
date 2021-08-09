import ballerina/jballerina.java;

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

function jPointerPointer(int size) returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.PointerPointer",
    paramTypes: ["long"]
} external;

function jBytePointer() returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.BytePointer",
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
