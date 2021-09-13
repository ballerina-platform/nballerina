// @productions equality if-else-stmt equality-expr return-stmt additive-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    io:println(foo(10)); // @output 0
}

function foo(int x) returns int {
    int i = x - 1;
    if (i != 0) {
        return foo(i);
    } 
    return i;
}
