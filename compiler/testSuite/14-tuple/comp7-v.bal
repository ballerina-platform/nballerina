import ballerina/io;
type T1 [int, float, int];
type T2 [int, float, int, int];

public function main() {
    T1 a = [0 , 5.0, 1];
    T2 b = [0 , 5.0, 1, 2];
    T2 c = [0 , 5.0, 1, -1];

    io:println(a < b); //@output true
    io:println(a <= b); //@output true
    io:println(a > b); //@output false
    io:println(a >= b); //@output false

    io:println(b < a); //@output false
    io:println(b <= a); //@output false
    io:println(b > a); //@output true
    io:println(b >= a); //@output true

    io:println(a < c); //@output true
    io:println(a <= c); //@output true
    io:println(a > c); //@output false
    io:println(a >= c); //@output false

    io:println(c < a); //@output false
    io:println(c <= a); //@output false
    io:println(c > a); //@output true
    io:println(c >= a); //@output true
}
