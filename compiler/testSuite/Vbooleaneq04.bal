import ballerina/io;

function foo(int a, int b, int c) returns boolean {
    return (a | b) == c;
}

public function main() {
    io:println(foo(1, 1, 2)); // @output false
}
