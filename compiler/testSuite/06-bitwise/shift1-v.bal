// @productions shift-expr additive-expr assign-stmt local-var-decl-stmt int-literal

import ballerina/io;
public function main() {
    int i = 7;
    int j = 2;
    io:println(i << j); // @output 28
    io:println(i << (j + 1)); // @output 56
    
    j = 67;             // 0b001000011
                        // 0b000111111 mask
                        // 0b000000011 shift by
    io:println(i << j); // @output 56
    io:println(1 << 3); // @output 8
}
