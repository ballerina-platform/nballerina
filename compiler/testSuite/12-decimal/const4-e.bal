import ballerina/io;
public function main() {
    int i = 1d; // @error
    io:println(i);
}
