import ballerina/io;
type F1 function(int, int) returns int;

function foo(int a, int b) returns int {
    return a + b;
}

public function main() {
    F1 f1 = foo;
    F1 f2 = foo;
    boolean result = f1 == f2; // @error
    io:println(result);
}
