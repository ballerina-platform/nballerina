// @productions equality boolean if-else-stmt equality-expr return-stmt unary-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    printBoolean(eq(1, 2)); // @output 0
    printBoolean(ne(2, 1)); // @output 1
    printBoolean(eq(2, -1)); // @output 0
    printBoolean(ne(1, 2)); // @output 1
    printBoolean(eq(0, 0)); // @output 1
    printBoolean(ne(2, 1)); // @output 1
    printBoolean(eq(-1, 17)); // @output 0
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}

function eq(int x, int y) returns boolean {
    return x == y;
}

function ne(int x, int y) returns boolean {
    return x != y;
}