// @productions list-constructor-expr equality equality-expr boolean-literal assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any x = [true];
    io:println(x == 1); // @output false
    io:println(x == true); // @output false
    io:println(x == ()); // @output false
    x = [];
    io:println(x != 1); // @output true
    x = [1, 2, 3];
    io:println(x != true); // @output true
    io:println(x != ()); // @output true
}
