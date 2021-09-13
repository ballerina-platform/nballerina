// @productions boolean if-else-stmt boolean-literal return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    if (foo()) {
        bar(100); // @output 100
    } else {
        baz(200);
    }
}

function foo() returns boolean {
    return true;
}

function bar(int x) {
    io:println(x);
}

function baz(int x) {
    io:println(x);
}
