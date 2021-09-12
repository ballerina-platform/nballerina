// @productions module-const-decl floating-point-literal
import ballerina/io;

const boolean B = 42; // @error

public function main() {
    io:println(B);
}
