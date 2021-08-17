import ballerina/io;

public function main() {
    io:println(1 == 2.0); // @error
}
