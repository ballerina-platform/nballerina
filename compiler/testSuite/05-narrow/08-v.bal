// @productions is-expr while-stmt equality if-else-stmt equality-expr return-stmt unary-expr any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    io:println(foo(1)); // @output 1
}

function foo(any x) returns int {
    any n = x;
    if n is int {
        int i = 1;
        while i == 0 {
            n = 1;
            return -1;
        }
        return n;
    }
    return 0;
}