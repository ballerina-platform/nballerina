import ballerina/io;
type L1 [1|2, 1|2];
type L2 [2|3, 2|3];

public function main() {
    L1&L2 l = [5, 6]; // @error
    io:println(l);
}
