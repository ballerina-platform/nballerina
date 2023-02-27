import ballerina/io;

public function main() {
    foo({ a: 1, b: 2 }); // @error
}

function foo(record { any a; } c) {
    io:println("unexpected");
}
