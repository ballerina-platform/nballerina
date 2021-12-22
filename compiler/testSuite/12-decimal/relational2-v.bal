import ballerina/io;
public function main() {
    decimal[] x = [1.5d];
    decimal[] y = [3d];
    decimal[] z = [3d];
    decimal[] a1 = [1d, 2d];
    decimal[] a2 = [2d, 3d];
    io:println(x < y); // @output true
    io:println(x > y); // @output false
    io:println(y <= x); // @output false
    io:println(y >= x); // @output true
    io:println(y >= z); // @output true
    io:println(y <= z); // @output true
    io:println(a1 < a2); // @output true
    io:println(a1 >= a2); // @output false
}
