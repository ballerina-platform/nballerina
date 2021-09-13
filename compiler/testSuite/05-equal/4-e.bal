// @productions bitwise-or-expr equality equality-expr int-literal
import ballerina/io;

public function main() {
    io:println((65535 | 17) == 1000); // @output false
}