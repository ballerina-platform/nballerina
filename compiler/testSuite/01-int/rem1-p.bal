// @productions multiplicative-expr return-stmt unary-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(rem(-10000, 0));
}

function rem(int x, int y) returns int {
    return x % y; // @panic divide by zero
}
