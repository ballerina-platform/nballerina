// @productions boolean if-else-stmt boolean-literal return-stmt unary-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    printBoolean(not(true)); // @output 0
    printBoolean(not(false)); // @output 1
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}

function not(boolean b) returns boolean {
    return !b;
}
