import ballerina/io;
public function main() {
    decimal d1 = 1d;
    decimal d2 = 2d;
    decimal d35 = 3.5d;
    decimal d15 = 1.5d;
    decimal[] x = [d15];
    decimal[] y = [d35];
    decimal[] z = [3.5d];
    decimal[] a1 = [d1, d2];
    decimal[] a2 = [d2, d35];
    io:println(x < y); // @output true
    io:println(x > y); // @output false
    io:println(y <= x); // @output false
    io:println(y >= x); // @output true
    io:println(y >= z); // @output true
    io:println(y <= z); // @output true
    io:println(a1 < a2); // @output true
    io:println(a1 >= a2); // @output false
}
