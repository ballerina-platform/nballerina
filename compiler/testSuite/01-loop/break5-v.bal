// @productions while-stmt break-stmt equality if-else-stmt equality-expr relational-expr return-stmt unary-expr additive-expr function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    // @output 8
    // @output 6
    // @output 4
    // @output 2
    // @output 0
    // @output -1
    io:println(foo(10));
}

function foo(int x) returns int {
    int i = x;
    while (i >= 0) {
        i = i - 1;
        if (x - i == 2) {
            io:println(i);
            break;
        }
    }
    if (i < 0) {
        return -1;
    }
    return foo(i);
}
