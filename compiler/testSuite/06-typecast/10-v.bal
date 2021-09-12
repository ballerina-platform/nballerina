// @productions type-cast-expr boolean floating-point-literal return-stmt function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int i = <int>f();
    io:println(i); // @output 10

    io:println(<int>10.8); // @output 11
}

public function f() returns int|boolean {
    return 10;
}
