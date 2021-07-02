import ballerina/jballerina.java;

distinct class PointerPointer {
    handle jObject;
    int index;
    int size;

    function init(int size) {
        self.jObject = create_pointer_pointer(size);
        self.index = 0;
        self.size = size;
    }

    function put(handle obj) {
        if self.index == self.size {
            panic error("Pointer pointer overflow");
        }
        self.jObject = insert_to_pointer_pointer(self.jObject, self.index, obj);
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
        return java:toString(byte_pointer_to_string(self.jObject)) ?: "null";
    }
}

function create_pointer_pointer(int size) returns handle = @java:Constructor {
    'class: "org.bytedeco.javacpp.PointerPointer",
    paramTypes: ["long"]
} external;

function insert_to_pointer_pointer(handle receiver, int arg0, handle arg1) returns handle = @java:Method {
    name: "put",
    'class: "org.bytedeco.javacpp.PointerPointer",
    paramTypes: ["long", "org.bytedeco.javacpp.Pointer"]
} external;

function byte_pointer_to_string(handle receiver) returns handle = @java:Method {
    name: "getString",
    'class: "org.bytedeco.javacpp.BytePointer",
    paramTypes: []
} external;
