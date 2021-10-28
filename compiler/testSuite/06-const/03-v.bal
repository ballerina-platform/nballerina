// @productions module-const-decl floating-point-literal int-literal
import ballerina/io;

const float N1 = 42;
const int N2 = 42;
const N3 = 42;

public function main() {
    io:println(N1); // @output 42.0
    io:println(N2); // @output 42
    io:println(N3); // @output 42
}
