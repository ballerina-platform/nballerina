import ballerina/io;

type A 1.0|2.0|3.0;
public function main() {
    A[] a = [1.0, 2.0, 3.0];
    float[] b = [4.0, 5.0, 6.0];
    io:println(a < b); //@output true
    io:println(a <= b); //@output true
}
