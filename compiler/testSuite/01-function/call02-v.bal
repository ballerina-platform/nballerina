import ballerina/io;

public function main() {
    int x = foo();
    io:println(x); // @output 2
}

function foo() returns int {
    return 2;
}