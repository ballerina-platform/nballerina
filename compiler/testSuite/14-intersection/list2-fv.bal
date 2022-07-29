import ballerina/io;
type L1 [int, int];
type L3 [int, int|float, decimal];

public function main() {
    L1&L3 l = [5, 6];
    if l is [int, int] {
        io:println("int, int"); // @output int, int
    }
}
