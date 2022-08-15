import ballerina/io;
type A1 (int|string)[];
type A2 (byte|float)[];

public function main() {
    A1&A2 a = [5, 6, 7];
    io:println(a); // @output [5,6,7]
}
