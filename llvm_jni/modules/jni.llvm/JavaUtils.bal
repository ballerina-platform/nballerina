import ballerina/jballerina.java;

function loadJavaCpp(handle c) returns handle = @java:Method {
    name: "load",
    'class: "org.bytedeco.javacpp.Loader",
    paramTypes: ["java.lang.Class"]
} external;

function jGetClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.lang.Object",
    paramTypes: []
} external;

function jGetClassLoader(handle receiver) returns handle = @java:Method {
    name: "getClassLoader",
    'class: "java.lang.Class",
    paramTypes: []
} external;

function jGetResourceAsStream(handle receiver, handle res) returns handle = @java:Method {
    name: "getResourceAsStream",
    'class: "java.lang.ClassLoader",
    paramTypes: ["java.lang.String"]
} external;

function jRead(handle receiver, handle buffer) returns int|error = @java:Method {
    name: "read",
    'class: "java.io.InputStream",
    paramTypes: ["[B"]
} external;
