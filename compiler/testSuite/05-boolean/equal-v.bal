// @productions bitwise-or-expr equality boolean equality-expr return-stmt function-call-expr int-literal
import ballerina/io;

function foo(int a, int b, int c) returns boolean {
    return (a | b) == c;
}

public function main() {
    io:println(foo(1, 1, 2)); // @output false
}
