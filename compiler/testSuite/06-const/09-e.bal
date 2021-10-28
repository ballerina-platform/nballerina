// @productions module-const-decl type-cast-expr floating-point-literal
import ballerina/io;

const N = <int>9223372036854776000f; // @error

public function main() {
    io:println(N);
}
