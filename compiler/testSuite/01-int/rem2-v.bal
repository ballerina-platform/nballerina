// @productions multiplicative-expr return-stmt unary-expr additive-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int INT_MIN = -9223372036854775807 - 1;
    io:println(rem(INT_MIN, -1)); // @output 0
}

function rem(int x, int y) returns int {
    return x % y;
}

