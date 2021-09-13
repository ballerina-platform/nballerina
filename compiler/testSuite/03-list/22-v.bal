// @productions list-type-descriptor list-constructor-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any[] v = [];
    v[0] = 1;
    io:println(v[0]); // @output 1
}