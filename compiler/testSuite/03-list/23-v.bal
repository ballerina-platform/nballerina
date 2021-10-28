// @productions list-type-descriptor list-constructor-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any[] v = [];
    v[1] = 2;
    io:println(v); // @output [null,2]
}
