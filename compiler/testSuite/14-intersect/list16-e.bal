import ballerina/io;
type L1 [int, string];
type L2 [int, float];

public function main() {
    (L1&L2)|() l = (); // @error
    io:println(l);
}
