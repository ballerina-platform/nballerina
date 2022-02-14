import ballerina/io;

public function main() {
    [int, string] t2 = [2, 3]; // @error
    io:println(t2);
}