import ballerina/io;
public function main() {
    [int, int] & [int, int|string, decimal] l = [5, 6]; // @error
    io:println(l);
}
