import ballerina/io;

public function main() {
    printEq(true, true); // @output 1
    printEq(true, false); // @output 0
    printEq(false, true); // @output 0
    printEq(false, false); // @output 1
    printNotEq(true, true); // @output 0
    printNotEq(true, false); // @output 1
    printNotEq(false, true); // @output 1
    printNotEq(false, false); // @output 0
}

function printEq(boolean b1, boolean b2) {
    if b1 == b2 {
        io:println(1);
    }
    else {
        io:println(0);
    }
}

function printNotEq(boolean b1, boolean b2) {
    if b1 != b2 {
        io:println(1);
    }
    else {
        io:println(0);
    }
}