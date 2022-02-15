import ballerina/io;
type A [int, [int, int]];

public function main() {
    A arr1 = [5, [1, 2]];
    A arr2 = [5, [0, 2]];
    A arr3 = [5, [2, 2]];
    A arr4 = [3, [1, 2]];

    io:println(arr1 < arr2); // @output false
    io:println(arr1 < arr3); // @output true
    io:println(arr1 < arr4); // @output false

    io:println(arr1 > arr2); // @output true
    io:println(arr1 > arr3); // @output false
    io:println(arr1 > arr4); // @output true
}
