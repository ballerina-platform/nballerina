import ballerina/io;
public function main() {
    float f = 1.0/0.0;
    io:println(<decimal>f); // @panic arithmetic overflow
}
