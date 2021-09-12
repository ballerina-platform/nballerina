// @productions boolean if-else-stmt boolean-literal function-call-expr int-literal
import ballerina/io;

public function main() {
    printIfFalse(true);
    printIfFalse(false); // @output 0
    printIfTrue(true); // @output 1
    printIfTrue(false);
}

function printIfFalse(boolean b) {
    if b {

    }
    else {
        io:println(0);
    }
}

function printIfTrue(boolean b) {
    if b {
        io:println(1);
    }
    else {
        
    }
}