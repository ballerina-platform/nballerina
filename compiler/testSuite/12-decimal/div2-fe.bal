import ballerina/io;
public function main() {
    io:println(1d / 0d); // @error
}
