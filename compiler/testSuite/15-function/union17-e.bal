import ballerina/io;
type F1 function(1|2) returns int;
type F2 function(2|3) returns int;

type F F1|F2;

public function main() {
    F f = foo;
    any x = f(1); // @error
    io:println(x);
}

function foo(int x) returns int {
    return x;
}
