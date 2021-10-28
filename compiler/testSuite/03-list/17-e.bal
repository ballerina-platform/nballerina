// @productions list-constructor-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any x = [1, 2, 3];
    x[0] = 5; // @error
    io:println(x);
}