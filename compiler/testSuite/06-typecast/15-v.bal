// @productions float type-cast-expr boolean floating-point-literal return-stmt function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    float f = <float>g();
    io:println(f); // @output 4.86
}

function g() returns float|boolean {
    return 4.86;
}
