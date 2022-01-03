import ballerina/io;
public function main() {
    int|float x1 = 1.2f;
    io:println(<decimal>x1); // @output 1.2

    decimal|float x2 = 1.3f;
    io:println(<decimal>x2); // @output 1.3
}
