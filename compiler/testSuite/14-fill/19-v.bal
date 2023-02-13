import ballerina/io;
type T [int, int, int];
type T1 [string, int, int];

public function main() {
    T[] a = [];
    io:println(a); // @output []
    a[1] = [1, 2, 3];
    io:println(a); // @output [[0,0,0],[1,2,3]]
    T[3] b = [];
    io:println(b); // @output [[0,0,0],[0,0,0],[0,0,0]]

    T1[] x = [];
    io:println(x); // @output []
    x[1] = ["a", 2, 3];
    io:println(x); // @output [["",0,0],["a",2,3]]
    T1[3] y = [];
    io:println(y); // @output [["",0,0],["",0,0],["",0,0]]
}
