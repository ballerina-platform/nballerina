// @productions equality if-else-stmt equality-expr return-stmt additive-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    // @output 1
    // @output 2
    // @output 3
    // @output 4
    // @output 5
    foo(0, 5);
}

function inc(int n) returns int {
    return n + 1;
}

function foo(int depth, int maxDepth) {
    if depth == maxDepth {
        return;
    }
    io:println(inc(depth));
    foo(depth + 1, maxDepth);
}
