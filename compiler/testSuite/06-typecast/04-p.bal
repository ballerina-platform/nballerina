// @productions float type-cast-expr boolean boolean-literal return-stmt function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    float f = <float>g(); // @panic bad type cast
    io:println(f);
}

public function g() returns float|boolean {
    return false;
}
