import ballerina/io;
type F function(int...) returns byte;
type F1 function(int, int) returns int;

type Fx F&F1;

public function main() {
    Fx f = foo;
    byte rest = f(1, 2, 3, 4);
    io:println(rest); // @output 0
}

function foo(int... args) returns byte {
    return 0;
}
