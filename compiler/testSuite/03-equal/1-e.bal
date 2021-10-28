// @productions list-type-descriptor list-constructor-expr equality if-else-stmt equality-expr boolean-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    any[] x = [];
    any[] y = x;
    if x != y { // @error
        io:println(true);
    }
}
