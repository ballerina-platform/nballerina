// @productions equality boolean if-else-stmt equality-expr boolean-literal return-stmt function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

function checkEquality(boolean b1, boolean b2) returns boolean {
    return b1 == b2;
}

function checkInEquality(boolean b1, boolean b2) returns boolean {
    return b1 != b2;
}

public function main() {
    boolean b = checkEquality(true, true);
    if b {
        io:println(4); // @output 4
    }
    else {
        io:println(5); 
    }
    b = checkEquality(false, false);
    if b {
        io:println(6); // @output 6
    }
    else {
        io:println(7);
    }
    b = checkInEquality(true, true);
    if b {
        io:println(8);  
    }
    else {
        io:println(9); // @output 9
    }
}
