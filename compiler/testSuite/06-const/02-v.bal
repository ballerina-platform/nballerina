// @productions module-const-decl is-expr boolean int-literal
import ballerina/io;

const T = 1 is int;
const F = 1 is boolean;

public function main() {
    io:println(T); // @output true
    io:println(F); // @output false
}
