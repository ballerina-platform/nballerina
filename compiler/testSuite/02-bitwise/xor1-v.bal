// @productions bitwise-xor-expr unary-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    int i = 5;
    int j = 9;
    io:println(i ^ j); // @output 12

    i = 9223372036854775807;
    j = 9223372036854775807;
    io:println(i ^ j); // @output 0

    i = -1;
    j = -1;
    io:println(i ^ j); // @output 0

    i = 9223372036854775807;
    j = -1;
    io:println(i ^ j); // @output -9223372036854775808
}
