// @productions module-const-decl int-literal
import ballerina/io;

const N = 123;

public function main() {
    io:println(N); // @output 123
}

