// @productions multiplicative-expr return-stmt unary-expr additive-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int INT_MIN = -9223372036854775807 - 1;
    io:println(div(INT_MIN, -1));
}

function div(int x, int y) returns int {
    return x / y; // @panic arithmetic overflow
}
