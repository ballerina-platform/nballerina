// @productions list-type-descriptor list-constructor-expr equality if-else-stmt equality-expr boolean-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    any[] x = [];
    if x != () { // @error
        io:println(true);
    }
}
