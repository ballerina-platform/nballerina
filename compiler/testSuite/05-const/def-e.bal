import ballerina/io;

const X = Y + 1; const Y = X + 1; // @error

public function main() {
    io:println(X);
}
