// @productions list-type-descriptor list-constructor-expr unary-expr local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any[] v = [17, 42, -11];
    int i = -1;
    io:println(v[i]); // @panic index out of bounds
}
