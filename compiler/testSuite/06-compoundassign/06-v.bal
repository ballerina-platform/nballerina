// @productions shift-expr compound-assignment-stmt multiplicative-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = 100;
    x >>= x>>4;
    io:println(x); // @output 1
    x += 33*3;
    io:println(x); // @output 100
    x -= x*x;
    io:println(x); // @output -9900
}
