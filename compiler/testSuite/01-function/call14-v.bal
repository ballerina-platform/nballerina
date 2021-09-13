// @productions return-stmt additive-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(bar(baz(sum(23, foobar()))))); // @output 35
}

function foo(int x) returns int {
    return x;
}

function bar(int x) returns int {
    return x;
}

function baz(int x) returns int {
    return x;
}

function foobar() returns int {
    return 12;
}

function sum(int x, int y) returns int {
    return x + y;
}
