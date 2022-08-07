import ballerina/io;
public function main() {
    [int, int] & [int, int|string] l = [5, 6];
    if l is [int, int] {
        io:println("int, int"); //@output int, int
    }
}
