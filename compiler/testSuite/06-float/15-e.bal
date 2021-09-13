// @productions multiplicative-expr floating-point-literal local-var-decl-stmt int-literal

import ballerina/io;

public function main() {
    float f = 10f;
    int i = 2;
    io:println(f / i); // @error

}
