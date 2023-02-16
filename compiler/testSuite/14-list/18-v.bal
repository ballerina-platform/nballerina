import ballerina/io;
public function main() {
    int[] a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    io:println(a[[0, 1][0]]); // @output 1
    io:println(a[{x: 1, y: 2}.x]); // @output 2
}
