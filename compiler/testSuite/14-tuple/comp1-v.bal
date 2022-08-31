import ballerina/io;

type INTSTR [int, string];
public function main() {
    INTSTR a = [0, "b"];
    INTSTR b = [1, "a"];
    INTSTR c = [0, "a"];

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
