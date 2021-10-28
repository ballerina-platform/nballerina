// @productions boolean if-else-stmt relational-expr boolean-literal return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    printBoolean(greaterThan(true, false)); // @output 1
    printBoolean(greaterThan(true, true)); // @output 0
    printBoolean(greaterThan(false, false)); // @output 0
    printBoolean(lessThan(true, false)); // @output 0
    printBoolean(lessThan(false, true)); // @output 1
    printBoolean(lessThan(true, true)); // @output 0
    printBoolean(lessThan(false, false)); // @output 0
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}

function lessThan(boolean x, boolean y) returns boolean {
    return x < y;
}

function greaterThan(boolean x, boolean y) returns boolean {
    return x > y;
}