import ballerina/io;

public function main() {
    io:println(foo(1));
}

function foo(any x) returns int {
    any n = x;
    if n is int {
        n = 1;
        return n; // @error
    }
    return 0;
}