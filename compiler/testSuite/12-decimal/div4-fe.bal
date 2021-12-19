import ballerina/io;
public function main() {
    io:println(1E6144d / 1E-1d); // @error
}
