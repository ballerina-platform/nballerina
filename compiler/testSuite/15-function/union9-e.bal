import ballerina/io;
type F1 function(1|2) returns int;
type F2 function(3|4) returns int;

type F F1|F2;

public function main() {
    F f = foo;
    int x = f(1); // @error
    io:println(x);
}


function foo(any a) returns int {
    return 1;
}
