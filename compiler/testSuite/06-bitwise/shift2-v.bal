// @productions shift-expr unary-expr additive-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    int i = 7;
    int j = 1;
    io:println(i >> j); // @output 3
    io:println(i >> (j + 1)); // @output 1
    
    j = 65;             // 0b001000001
                        // 0b000111111 mask
                        // 0b000000001 shift by
    io:println(i >> j); // @output 3
    
    
    io:println(-1 >> 1); // @output -1
}
