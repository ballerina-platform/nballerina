import ballerina/io;

public function main() {
    foo(1); // @output int
    foo(true); // @output true
}

function foo(any x) {
    any n = x;
    if n is int {
        n = "int";
    }
    io:println(n);
}
