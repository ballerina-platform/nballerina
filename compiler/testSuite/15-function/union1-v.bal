import ballerina/io;
type F int | function(int, int) returns int;

public function main() {
    F f = foo;
    if f is int {
        io:println("unexpected");
    }
    else {
        io:println(f(1,2)); // @output 3
    }
}

function foo(int lhs, int rhs) returns int {
    return lhs + rhs;
}
