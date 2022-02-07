import ballerina/io;

type A 1|2|3;
public function main() {
    A[] a = [1, 2, 3];
    int[] b = [4, 5, 6];
    io:println(a < b); //@output true
    io:println(a <= b); //@output true
}
