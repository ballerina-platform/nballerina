// @productions while-stmt break-stmt equality if-else-stmt equality-expr relational-expr unary-expr additive-expr function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    printIfBetween(6, 5, 7); // @output 6
    printIfBetween(1, 2, 3);
    printIfBetween(0, -1, 4); // @output 0
}

function printIfBetween(int n, int min, int max) {
    int i = min;
    while i <= max {
        if i == n {
            io:println(n);
            break;
        }
        i = i + 1;
    }
}