// @productions floating-point-literal additive-expr local-var-decl-stmt int-literal

import ballerina/io;

public function main() {
    float f = 0.0;
    int i = 0;
    io:println(f + i); // @error
}
