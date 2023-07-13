import ballerina/io;
type F1 function(int) returns int;
type F2 function(string) returns int;

type Fx F1&F2;

public function main() {
    Fx fx = foo; // @error
    int r1 = fx(1);
    io:println(r1);
}

function foo(int a) returns int {
    return a + 1;
}
