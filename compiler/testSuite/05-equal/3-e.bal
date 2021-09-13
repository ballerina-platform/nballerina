// @productions bitwise-xor-expr equality equality-expr int-literal
import ballerina/io;

public function main() {
    io:println((1 ^ 1) != 255); // @error
}