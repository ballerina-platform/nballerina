import ballerina/io;
type B function(int, int) returns int;
type F function(int) returns int;
type D function(int, int...) returns int;

public function main() {
    B|D|F|int x = foo;
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
    x = fooBar;
    if x is D {
        io:println(x(1)); // @output 2
        io:println(x(1, 2)); // @output 3
        io:println(x(1, 2, 3)); // @output 6
        io:println(x(1, 2, 3, 4)); // @output 10
    }
    else if x is F {
        io:println("error");
    }
    else if x is B {
        io:println("error");
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

function fooBar(int x, int... y) returns int {
    if y.length() == 0 {
        return foo(x);
    }
    int curr = bar(x, y[0]);
    foreach int i in 1 ..< y.length() {
        curr = bar(curr, y[i]);
    }
    return curr;
}
