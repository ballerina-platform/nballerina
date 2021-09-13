// @productions module-const-decl relational-expr boolean-literal int-literal
import ballerina/io;

const X = 1 < true; // @error

public function main() {
    io:println(X);
}
