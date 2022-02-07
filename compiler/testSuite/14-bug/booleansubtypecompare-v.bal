import ballerina/io;

type A false;
public function main() {
    A[] a = [false, false];
    boolean[] b = [true, true];
    io:println(a < b); //@output true
    io:println(a <= b); //@output true
    io:println(a > b); //@output false
    io:println(a >= b); //@output false

    io:println(b < a); //@output false
    io:println(b <= a); //@output false
    io:println(b > a); //@output true
    io:println(b >= a); //@output true
}

