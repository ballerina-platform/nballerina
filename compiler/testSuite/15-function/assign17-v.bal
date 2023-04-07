import ballerina/io;
type F function(int, int) returns int;
type FB function(byte, byte) returns int;

public function main() {
    F f = foo;
    int x = f(1, 2);
    io:println(x); // @output 3
    FB fb = foo;
    io:println(fb(8, 2)); // @output 10
}

function foo(int a, int b) returns byte {
    int sum = a + b;
    return <byte>sum;
}
