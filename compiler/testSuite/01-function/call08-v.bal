// @productions equality boolean if-else-stmt equality-expr boolean-literal return-stmt unary-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    printBoolean(foo()); // @output 0
}

function foo() returns boolean {
    if (!bar(1)) {
        return true;
    } else {
        return false;
    }
}

function bar(int x) returns boolean {
    return x == 1;
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    } else {
        io:println(0);
    }
}
