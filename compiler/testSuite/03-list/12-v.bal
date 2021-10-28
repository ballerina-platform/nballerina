// @productions list-type-descriptor list-constructor-expr unary-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any[] v = [17, 42, -11];
    int i = 0;
    io:println(v[i]); // @output 17
    i = 1;
    io:println(v[i]); // @output 42
    i = 2;
    io:println(v[i]); // @output -11
}
