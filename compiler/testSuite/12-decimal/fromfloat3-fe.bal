import ballerina/io;
public function main() {
    io:println(<decimal>(0.0/0.0)); // @error
}
