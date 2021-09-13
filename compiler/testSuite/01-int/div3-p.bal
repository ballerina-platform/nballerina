// @productions multiplicative-expr return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(div(672, 0));
}

function div(int x, int y) returns int {
    return x / y; // @panic divide by zero
}
