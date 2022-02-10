import ballerina/io;

public function main() {
    [int, int] p = [17, 42];
    io:println(p); // @output [17,42]
}