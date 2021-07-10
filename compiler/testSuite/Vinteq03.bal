import ballerina/io;

public function main() {
    io:println((1 & 1) == 2); // @output false
    io:println((1 ^ 1) != 255); // @output true
    io:println((65535 | 17) == 1000); // @output false
}