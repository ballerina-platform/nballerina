import ballerina/io;
type F1 function(int) returns int;
type F2 function(byte) returns int;
type F3 function(byte) returns int|string;

type Fx F1&F2;
type Fy F1&F3;

public function main() {
    Fx fx = foo;
    int r1 = fx(1);
    io:println(r1); // @output 2
    fx = bar;
    int r2 = fx(1);
    io:println(r2); // @output 5

    Fy fy = foo;
    int|string r3 = fy(2);
    io:println(r3); // @output 3
}

function foo(int a) returns int {
    return a + 1;
}

function bar(int a) returns byte {
    return 5;
}

function baz(byte a) returns int|string {
    if (a > 0) {
        return a - 1;
    } else {
        return "zero";
    }
}
