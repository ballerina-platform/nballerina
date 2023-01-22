import ballerina/io;
type T [int, boolean];

public function main() {
    T[][] a = [];	
    a[1] = [[5, true]];
    io:println(a); //@output [[],[[5,true]]]

    T[][2] b = [];
    b[1] = [[5, true]];
    io:println(b); //@output [[[0,false],[0,false]],[[5,true],[0,false]]]

    T[][] c = [];
    c[1][1] = [5, true];
    io:println(c); //@output [[],[[0,false],[5,true]]
}
