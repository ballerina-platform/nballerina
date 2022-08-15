import ballerina/io;
type L1 [int|float|string, int|string];
type L2 [int|float|byte, byte|string|float];

public function main() {
    L1&L2 l = [1, "a"];
    io:println(l); // @output [1,"a"]
    l[0] = 0.5;
    l[1] = 10;
    io:println(l); // @output [0.5,10]
}
