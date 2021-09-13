// @productions multiplicative-expr return-stmt additive-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo() + bar()); // @output 107
    io:println(foo() - bar()); // @output 103
    io:println(foo() * bar()); // @output 210
    io:println(foo() / bar()); // @output 52
    io:println(foo() % bar()); // @output 1
}

function foo() returns int {
    return 105;
}

function bar() returns int {
    return 2;
}
