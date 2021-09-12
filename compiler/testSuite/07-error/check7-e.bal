import ballerina/io;

const int X = check 1; // @error

public function main() {
    io:println(X);
}
