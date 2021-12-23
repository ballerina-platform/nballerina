import ballerina/io;
public function main() {
    float|decimal|string x = "1.2f";
    io:println(<int>x); // @panic bad type cast
}
