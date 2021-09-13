// @productions float floating-point-literal return-stmt function-call-expr local-var-decl-stmt

import ballerina/io;

public function main() {
    float x = 17;
    io:println(x); // @output 17.0
    foo(42); // @output 42.0
    io:println(bar()); // @output 21.0
}

function foo(float x) {
    io:println(x);
}

function bar() returns float {
    return 21;
}
