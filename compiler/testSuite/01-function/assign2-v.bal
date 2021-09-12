// @productions assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = 0;
    io:println(x); // @output 0
    x = 1;
    io:println(x); // @output 1
    x = 2;
    io:println(x); // @output 2
}