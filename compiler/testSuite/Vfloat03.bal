
import ballerina/io;

public function main() {
    float x = 17;
    io:println(x); // @output 17
    foo(42); // @output 42
    io:println(bar()); // @output 21
}

function foo(float x) {
    io:println(x);
}

function bar() returns float {
    return 21;
}