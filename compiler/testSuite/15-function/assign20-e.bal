import ballerina/io;
type F function(byte, byte, byte) returns int;

public function main() {
    F f = foo;
    io:println(f(1, 2, 3000)); // @error
}

function foo(int a, int b, int... c) returns int {
    int result = a + b;
    foreach int i in 0..< c.length() {
        result += c[i];
    }
    return result;
}
