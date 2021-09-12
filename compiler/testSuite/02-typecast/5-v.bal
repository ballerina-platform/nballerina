// @productions type-cast-expr return-stmt any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int n = <int>foo(1017);
    io:println(n); // @output 1017
}

function foo(int n) returns any {
    return n;
}
