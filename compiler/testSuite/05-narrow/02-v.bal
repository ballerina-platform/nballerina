// @productions is-expr string string-literal boolean if-else-stmt boolean-literal unary-expr additive-expr any function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(2); // @output 3
    foo("hello"); // @output hello, hello
    foo(true); // @output false
}

function foo(any x) {
    if x is int {
        io:println(x + 1);
    }
    else if x is string {
        io:println(x + ", " + x);
    }
    else if x is boolean {
        io:println(!x);
    }
    else {
        io:println(x);
    }
}