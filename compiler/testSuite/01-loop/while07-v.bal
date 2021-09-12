// @productions while-stmt equality boolean multiplicative-expr if-else-stmt equality-expr relational-expr boolean-literal return-stmt additive-expr function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    printClosestSquareNum(1); // @output 1
    printClosestSquareNum(0); // @output 0
    printClosestSquareNum(5); // @output 4
    printClosestSquareNum(17); // @output 16
}

function printClosestSquareNum(int x) {
    int i = x;
    while i >= 0 {
        if (isSquareNumber(i)) {
            io:println(i);
            return;
        }
        i = i - 1;
    }
}

function isSquareNumber(int x) returns boolean {
    int i = 0;
    while i <= x {
        if (i*i == x) {
            return true;
        } else if (i*i > x) {
            return false;
        }
        i = i + 1;
    }

    return false;
}
