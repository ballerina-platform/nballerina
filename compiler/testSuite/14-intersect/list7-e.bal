import ballerina/io;
type L1 [int, int];
type L2 [int, string];
type L3 L1&L2; // @error


public function main() {
    L3? l3 = ();
    io:println(l3);
}
