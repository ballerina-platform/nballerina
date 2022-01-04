import ballerina/io;
public function main() {
    decimal d = 9223372036854775808d;
    io:println(<int>d); // @panic arithmetic overflow
}
