import ballerina/io;
public function main() {
    io:println(1e-6144d); // @error
}
