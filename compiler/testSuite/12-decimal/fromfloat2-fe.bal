import ballerina/io;
public function main() {
    io:println(<decimal>(1.0/0.0)); // @error
}
