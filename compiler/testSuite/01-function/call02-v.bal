// @productions return-stmt function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = foo();
    io:println(x); // @output 2
}

function foo() returns int {
    return 2;
}