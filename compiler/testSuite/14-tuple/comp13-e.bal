import ballerina/io;
type A [int, [int, int]];
type B [int, [int, string]];

public function main() {
    A arr1 = [5, [1, 2]];
    B arr2 = [5, [0, "a"]];

    io:println(arr1 < arr2); // @error
}
