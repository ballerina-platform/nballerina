// @productions is-not-expr is-expr string return-stmt additive-expr any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any x = foo();
    int z = 4;
    io:println(z !is int); // @output false
    io:println(z !is string); // @output true
    io:println(x !is int); // @output false
    io:println(x !is string); // @output true
}

public function foo() returns any {
    int a = 1;
    int b = 2;
    any y = a + b;
    return y;
}