import ballerina/io;
type L1 [int, int|string];
type L2 [byte, byte];

public function main() {
    L1&L2 l = [5, 6];
    l[0] = 100;
    io:println(l); // @output [100,6]
}
