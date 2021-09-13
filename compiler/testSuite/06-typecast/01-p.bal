// @productions type-cast-expr boolean boolean-literal return-stmt function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    int i = <int>f(); // @panic bad type cast
    io:println(i);
}

public function f() returns int|boolean {
    return false;
}
