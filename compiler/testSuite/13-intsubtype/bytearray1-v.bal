import ballerina/io;

public function main() {
    byte[] bytes = [0, 255, 17];
    byte b = bytes[1];
    io:println(b); // @output 255
    b = bytes[2];
    io:println(b); // @output 17
    b = bytes[0];
    io:println(b); // @output 0
}