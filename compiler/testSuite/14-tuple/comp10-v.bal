import ballerina/io;
type A [int, int];
type B [int, byte];

public function main() {
    A a = [0, 500];
    B b = [0, 5];

    io:println(a < b); //@output false
    io:println(a <= b); //@output false
    io:println(a > b); //@output true
    io:println(a >= b); //@output true

    io:println(b < a); //@output true
    io:println(b <= a); //@output true
    io:println(b > a); //@output false
    io:println(b >= a); //@output false
}
