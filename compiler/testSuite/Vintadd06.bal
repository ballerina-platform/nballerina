import ballerina/io;

public function main() {
    io:println(8 + 5 - 11); // @output 2
    io:println(8 - 11 + 5); // @output 2
    io:println(3 + 5 - 5 + 9); // @output 11
    io:println(3 - 5 + 9 - 4); // @output 3
}
