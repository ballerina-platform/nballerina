import ballerina/io;

type T [int, int, int];
public function main() {
    T a = [0, 1, 2];
    T b = [1, 0, 3];
    T c = [0, 1, 0];

    io:println(a < b); //@output true
    io:println(a <= b); //@output true
    io:println(a > b); //@output false
    io:println(a >= b); //@output false

    io:println(b < a); //@output false
    io:println(b <= a); //@output false
    io:println(b > a); //@output true
    io:println(b >= a); //@output true


    io:println(a < c); //@output false
    io:println(a <= c); //@output false
    io:println(a > c); //@output true
    io:println(a >= c); //@output true

    io:println(c < a); //@output true
    io:println(c <= a); //@output true
    io:println(c > a); //@output false
    io:println(c >= a); //@output false
}
