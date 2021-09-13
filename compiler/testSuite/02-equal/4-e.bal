// @productions equality if-else-stmt equality-expr boolean-literal local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any x = 1;
    any y = true;
    if x != y { // @error
        io:println(true);
    }
}