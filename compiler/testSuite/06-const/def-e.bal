import ballerina/io;

const X = 1 === 0; // @error


public function main() {
    io:println(X);
}
