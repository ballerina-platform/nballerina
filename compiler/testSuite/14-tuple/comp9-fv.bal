import ballerina/io;
type A int[10];

public function main() {
    A arr1 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    A arr2 = [0, 1, 2, 3, 4, 5, 6, 7, 15, 9];
    io:println(arr1 < arr2); // @output true
}
