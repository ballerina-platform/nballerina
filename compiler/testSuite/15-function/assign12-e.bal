import ballerina/io;
type F function(int, int) returns int;

public function main() {
    F f = foo; // @error
    io:println(f);
}

function foo(int x, int y) returns byte {
    return <byte>(x + y);
}
