import ballerina/io;

public function main() {
    int[3] v = [1, 2, 3, 4]; // @error
    io:println(v);
}
