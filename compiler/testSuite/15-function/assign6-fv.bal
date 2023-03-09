import ballerina/io;
type F function(int) returns int;

public function main() {
    any f = foo;
    if f is F {
        io:println(f(1));
    }
    else {
        io:println("expected"); // @output expected
    }
}

function foo(int x) {
    io:println("unexpected");
}
