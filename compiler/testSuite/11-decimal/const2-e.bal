import ballerina/io;
public function main() {
    int i = 1.2d; // @error
    io:println(i);
}
