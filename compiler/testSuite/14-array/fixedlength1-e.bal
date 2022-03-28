import ballerina/io;

public function main() {
    int[4] v = [1, 2, 3, 4];
    io:println(v[4]); // @error
}
