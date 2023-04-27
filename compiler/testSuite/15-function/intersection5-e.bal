import ballerina/io;
type F function(int...) returns byte;
type F1 function(int, int) returns string;

type Fx F&F1;

public function main() {
    Fx f = foo; // @error
    io:println(f);
}

function foo(int... args) returns byte|string {
    return 0;
}
