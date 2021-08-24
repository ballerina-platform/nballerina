import ballerina/io;

const X = 1 < true; // @error

public function main() {
    io:println(X);
}
