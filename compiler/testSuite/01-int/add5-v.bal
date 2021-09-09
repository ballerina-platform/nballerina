import ballerina/io;

public function main() {
    io:println(3 + 5); // @output 8
    io:println(3 + 5 + 11); // @output 19
    io:println(3 + 5 + 5 + 9); // @output 22
    io:println(3 + 5 + 5 + 9 + 12); // @output 34
    io:println(3 + 5 + 5 + 9 + 4 + 7); // @output 33
    io:println(3 + 5 + 5 + 9 + 4 + 7 + 5); // @output 38
    io:println(3 + 5 + 5 + 9 + 4 + 7 + 23 + 50); // @output 106
}
