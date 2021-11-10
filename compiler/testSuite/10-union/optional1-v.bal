import ballerina/io;

public function main() {
    int[]? x = [1,2,3];
    int[] y = <int[]>x;
    io:println(y[1]); //@output 2
}