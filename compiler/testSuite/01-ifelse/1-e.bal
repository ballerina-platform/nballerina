import ballerina/io;

public function main() {
    if (foo()) { // @error
        io:println(0);
    }
}

function foo() returns int {
    return 2;
}
