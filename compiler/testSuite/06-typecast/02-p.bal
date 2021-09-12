// @productions float type-cast-expr boolean boolean-literal return-stmt function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    int i = <int>f(); // @panic bad type cast
    io:println(i);
}

function f() returns float|boolean {
    return true;
}
