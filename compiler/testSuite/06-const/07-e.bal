// @productions module-const-decl type-cast-expr multiplicative-expr floating-point-literal unary-expr
import ballerina/io;

const N = <int>(-1.0/0.0); // @error

public function main() {
    io:println(N);
}
