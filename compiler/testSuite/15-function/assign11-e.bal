import ballerina/io;
type F function(int, int) returns byte;

public function main() {
    F f = foo; // @error
    io:println(f);
}

function foo(int x, int y) returns int {
    return x + y;
}
