import ballerina/io;
public function main() {
    decimal d = 92233720368547758076e1d;
    io:println(<int>d); // @panic arithmetic overflow
}
