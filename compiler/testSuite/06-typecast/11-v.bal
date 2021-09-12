// @productions float type-cast-expr boolean floating-point-literal return-stmt function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    int i = <int>f();
    io:println(i); // @output 2
}

function f() returns float|boolean {
    return 2.0;
}
