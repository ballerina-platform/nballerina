import ballerina/io;

type A "a"|"aa";
public function main() {
    A[] a = ["a", "aa"];
    string[] b = ["b", "bb"];
    io:println(a < b); //@output true
    io:println(a <= b); //@output true
    io:println(a > b); //@output false
    io:println(a >= b); //@output false

    io:println(b < a); //@output false
    io:println(b <= a); //@output false
    io:println(b > a); //@output true
    io:println(b >= a); //@output true
}
