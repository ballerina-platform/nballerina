// @productions list-type-descriptor list-constructor-expr local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any[] v = [];
    int i = 0;
    io:println(v[i]); // @panic index out of bounds
}
