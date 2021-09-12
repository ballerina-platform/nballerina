// @productions is-expr if-else-stmt return-stmt any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    io:println(foo(1));
}

function foo(any x) returns int {
    any n = x;
    if n is int {
        n = 1;
        return n; // @error
    }
    return 0;
}