import ballerina/io;
public function main() {
    decimal d = 9223372036854775807.5d;
    io:println(<int>d); // @panic arithmetic overflow
}
