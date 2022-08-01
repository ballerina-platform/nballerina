import ballerina/io;
type L1 [int, int];
type L2 [int, int|string];

public function main() {
    L1&L2 l = [5, 6];
    if l is [int, int] {
        io:println("int, int"); // @output int, int
    }
    if l is L1 {
        io:println("int, int"); // @output int, int
    }
}
