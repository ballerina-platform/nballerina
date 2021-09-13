// @productions list-type-descriptor list-constructor-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int[] x = [];
    x[1] = 17;
    io:println(x[0]); // @output 0
    io:println(x[1]); // @output 17
    x[3] = 42;
    io:println(x[2]); // @output 0
    io:println(x[3]); // @output 42
}
