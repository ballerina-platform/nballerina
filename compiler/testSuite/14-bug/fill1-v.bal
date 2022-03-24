import ballerina/io;

type Sign 1|0|-1;

public function main() {
    Sign[] signs = [];
    signs[1] = 1;
    io:println(signs[0]); // @output 0
    byte[] bytes = [];
    bytes[17] = 42;
    io:println(bytes[17]); // @output 42
    io:println(bytes[16]); // @output 0
}

