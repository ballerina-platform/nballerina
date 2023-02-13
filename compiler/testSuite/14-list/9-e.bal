import ballerina/io;

public function main() {
    foo([1, 2]); // @error
}

function foo(int... args) {
    io:println("unexpected");
}
