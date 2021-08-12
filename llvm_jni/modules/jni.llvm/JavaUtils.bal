
import ballerina/jballerina.java;

function exec(string cmd) returns int {
	worker w {
		handle runtime = jGetRuntime();
		handle process = checkpanic jExec(runtime, java:fromString(cmd));
		int result = checkpanic jWaitFor(process);
		result -> function;
	}
	int result = <- w;
	return result;
}

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

function jGetRuntime() returns handle = @java:Method {
    name: "getRuntime",
    'class: "java.lang.Runtime",
    paramTypes: []
} external;

function jExec(handle receiver, handle command) returns handle|error = @java:Method {
    name: "exec",
    'class: "java.lang.Runtime",
    paramTypes: ["java.lang.String"]
} external;

function jWaitFor(handle receiver) returns int|error = @java:Method {
    name: "waitFor",
    'class: "java.lang.Process",
    paramTypes: []
} external;
