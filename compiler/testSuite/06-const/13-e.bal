import ballerina/io;

const X = foo(); // @error

public function main() {
    io:println(X);
}

function foo() returns int {
    return 17;
}
