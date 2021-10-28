// @productions equality equality-expr floating-point-literal
import ballerina/io;

public function main() {
    io:println(1.0 == 2.0); // @error
}
