// @productions float type-cast-expr boolean if-else-stmt floating-point-literal boolean-literal return-stmt function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int i = <int>f(true);
    io:println(i); // @output 2

    i = <int>f(false);
    io:println(i); // @output 4
}

function f(boolean isInt) returns float|int|boolean {
    if isInt {
        return 2;
    }
    else {
        return 3.5;
    }
}
