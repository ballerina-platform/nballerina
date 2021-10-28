// @productions boolean if-else-stmt relational-expr return-stmt unary-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    printBoolean(gte(1, 2)); // @output 0
    printBoolean(gte(2, 1)); // @output 1
    printBoolean(gte(2, -1)); // @output 1
    printBoolean(gte(42, 42)); // @output 1
    printBoolean(lte(1, 2)); // @output 1
    printBoolean(lte(0, 0)); // @output 1
    printBoolean(lte(2, 1)); // @output 0
    printBoolean(lte(-1, 17)); // @output 1
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}

function lte(int x, int y) returns boolean {
    return x <= y;
}

function gte(int x, int y) returns boolean {
    return x >= y;
}