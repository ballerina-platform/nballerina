import ballerina/io;

const N = <int>(0.0/0.0); // @error

public function main() {
    io:println(N);
}
