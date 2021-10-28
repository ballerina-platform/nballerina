// @productions boolean multiplicative-expr if-else-stmt boolean-literal return-stmt additive-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(13, false)); // @output 3
    io:println(foo(14, true)); // @output 15
}

function foo(int i, boolean b) returns int {
    if (b) {
        return i + 1;
    } else {
        return i % 5;
    }
}
