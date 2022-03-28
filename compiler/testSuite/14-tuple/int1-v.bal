import ballerina/io;

type IntPair [int, int];

public function main() {
    IntPair p = [17, 42];
    io:println(p); // @output [17,42]
}
