// @productions equality boolean if-else-stmt equality-expr return-stmt unary-expr function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    boolean b = intEq(17, 17);
    if b {
        io:println(17); // @output 17
    }
    else {
        io:println(0);
    }

    b = intNotEq(21, 21);
    if b {
        io:println(0); 
    }
    else {
        io:println(21); // @output 21
    }

    b = intEq(-17, -17);
    if b {
        io:println(-17); // @output -17
    }
    else {
        io:println(0);
    }

    b = intNotEq(9223372036854775807, -9223372036854775807);
    if b {
        io:println(9223372036854775807); // @output 9223372036854775807
    }
    else {
        io:println(0);
    }    
}

function intEq(int i, int j) returns boolean {
    return i == j;
}

function intNotEq(int i, int j) returns boolean {
    return i != j;
}
