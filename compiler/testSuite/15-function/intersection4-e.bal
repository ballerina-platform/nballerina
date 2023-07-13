import ballerina/io;
type F function(int...) returns byte;
type F1 function(int, int) returns int;

type Fx F&F1;

public function main() {
    Fx f = bar; // @error
    byte rest = f(1, 2);
    io:println(rest);
}

function bar(int a, int b) returns int {
    return a + b;
}
