import ballerina/io;
public function main() {
    float f = 1.4f;
    io:println(<decimal|float>f); // @output 1.4
}
