import ballerina/io;
type F function(int, int) returns int;

public function main() {
    F f = foo;
    io:println(f(1, 2)); // @output 3
}

function foo(int x, int y) returns byte {
    return <byte>(x + y);
}
