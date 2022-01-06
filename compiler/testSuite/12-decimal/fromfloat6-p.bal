import ballerina/io;
public function main() {
    float f = 0.0/0.0;
    io:println(<decimal>f); // @panic not a valid decimal
}
