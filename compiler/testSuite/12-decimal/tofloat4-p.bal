import ballerina/io;

public function main() {
    decimal|string x = "decimal string";
    io:println(<float>x); // @panic bad type cast
}
