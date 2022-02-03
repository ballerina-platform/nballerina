import ballerina/io;

public function main() {
    decimal d = 0x12;
    io:println(d); // @error
}
