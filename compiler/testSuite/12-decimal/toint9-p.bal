import ballerina/io;
public function main() {
    decimal d = -9.999999999999999999999999999999999E6144d;
    io:println(<int>d); // @panic arithmetic overflow
}
