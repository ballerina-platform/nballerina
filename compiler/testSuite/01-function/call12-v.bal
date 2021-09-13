// @productions multiplicative-expr return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(getArg1(), getArg2())); // @output 8
}

function foo(int i, int j) returns int {
    return i*j;
}

function getArg1() returns int {
    return 2;
}

function getArg2() returns int {
    return 4;
}
