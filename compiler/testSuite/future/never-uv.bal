import ballerina/io;

function foo() returns never {
    panic error("never returns");
}

public function main() {
    io:println("hello"); // @output hello
}
