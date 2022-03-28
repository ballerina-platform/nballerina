import ballerina/io;
type T1 [int, int];
type T2 [int];

public function main() {
    T1 a = [0 , 5];
    T2 b = [2];
    T2 c = [-1];

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
