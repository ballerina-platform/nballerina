import ballerina/io;
type F function(int) returns string|int|boolean;
type F1 function(int) returns string|byte|boolean;

public function main() {
    F f = foo;
    io:println(f(1)); //@output 1
    f = bar;
    io:println(f(1)); //@output true
    io:println(f(-1)); //@output -1

    F1 f1 = foobar;
    io:println(f1(1)); //@output 1
    f1 = barbaz;
    io:println(f1(1)); //@output 1
    io:println(f1(-1)); //@output true
}

function foo(int a) returns int {
    return a;
}

function bar(int a) returns int|boolean {
    if a < 0 {
        return a;
    }
    return true;
}

function foobar(int a) returns byte {
    if a is byte {
        return a;
    }
    return 0;
}

function barbaz(int a) returns byte|boolean {
    if a is byte {
        return a;
    }
    return true;
}
