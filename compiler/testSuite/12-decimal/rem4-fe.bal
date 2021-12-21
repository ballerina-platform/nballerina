import ballerina/io;
public function main() {
    io:println(9.0E32d % 1E-2d); // @error
}
