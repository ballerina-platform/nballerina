// @productions list-type-descriptor list-constructor-expr boolean-literal unary-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    boolean[] v = [true];
    io:println(!v[0]); // @output false
}
