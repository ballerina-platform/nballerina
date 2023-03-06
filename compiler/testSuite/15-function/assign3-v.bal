import ballerina/io;
type B function(int, int) returns int;
type F function(int) returns int;

public function main() {
    B|F|int x = foo;
    if x is F {
        io:println(x(1)); // @output 2
    }
    else {
        io:println("error");
    }
    x = bar;
    if x is F {
        io:println("error");
    }
    else if x is B {
        io:println(x(5, 6)); // @output 11
    }
    else {
        io:println("error");
    }
}

function bar(int x, int y) returns int {
    return x + y;
}

function foo(int x) returns int {
    return x + 1;
}
