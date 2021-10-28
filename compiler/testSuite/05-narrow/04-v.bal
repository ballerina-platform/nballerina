// @productions is-expr string-literal if-else-stmt boolean-literal any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    foo(1); // @output int
    foo(true); // @output true
}

function foo(any x) {
    any n = x;
    if n is int {
        n = "int";
    }
    io:println(n);
}
