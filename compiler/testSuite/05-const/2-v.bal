// @productions module-const-decl additive-expr int-literal
import ballerina/io;

const N = N1 + N2 + N3;
const N1 = 100;
const N2 = 20;
const N3 = 3;

public function main() {
    io:println(N); // @output 123
}
