import ballerina/io;
type F1 function(int, int) returns int;
type F2 function(int...) returns string;

type F F1|F2;

public function main() {
    F f = foo;
    int ret = f(1, 2); // @error
    io:println(ret);
}

function foo(int a, int b) returns int {
    return a + b;
}
