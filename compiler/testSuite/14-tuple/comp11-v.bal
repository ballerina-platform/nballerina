import ballerina/io;
type A [int, float, decimal, int...];
type B [byte];
type C [byte, int...];

public function main() {
    A a = [1, 6.4, 100, 10, 11];
    B b = [5];
    C c = [0, 4, 10];

    io:println(a < b); //@output true
    io:println(a <= b); //@output true
    io:println(a > b); //@output false
    io:println(a >= b); //@output false

    io:println(b < a); //@output false
    io:println(b <= a); //@output false
    io:println(b > a); //@output true
    io:println(b >= a); //@output true

    io:println(b < c); //@output false
    io:println(b <= c); //@output false
    io:println(b > c); //@output true
    io:println(b >= c); //@output true

    io:println(c < b); //@output true
    io:println(c <= b); //@output true
    io:println(c > b); //@output false
    io:println(c >= b); //@output false
}
