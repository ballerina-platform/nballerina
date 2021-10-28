// @productions return-stmt additive-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int INT_MAX = 9223372036854775807;
    io:println(add(INT_MAX, 1));
}

function add(int x, int y) returns int {
    return x + y; // @panic arithmetic overflow
}
