// @productions boolean if-else-stmt relational-expr return-stmt unary-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = 1;
    int y = 2;
    printBoolean(x < y); // @output 1
    printBoolean(greaterThan(1, 2)); // @output 0
    printBoolean(greaterThan(2, 1)); // @output 1
    printBoolean(greaterThan(2, -1)); // @output 1
    printBoolean(lessThan(1, 2)); // @output 1
    printBoolean(lessThan(0, 0)); // @output 0
    printBoolean(lessThan(2, 1)); // @output 0
    printBoolean(lessThan(-1, 17)); // @output 1
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}

function lessThan(int x, int y) returns boolean {
    return x < y;
}

function greaterThan(int x, int y) returns boolean {
    return x > y;
}