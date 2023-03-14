import ballerina/io;
type F function(int, int) returns int;

public function main() {
    F f = foo; // @error
    io:println(f);
}

function foo(byte x, byte y) returns int {
    return <byte>(x + y);
}
