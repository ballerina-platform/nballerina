// @productions module-const-decl unary-expr int-literal
import ballerina/io;

const MINUS1 = -1;

public function main() {
    io:println(MINUS1); // @output -1
}
