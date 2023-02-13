import ballerina/io;
public function main() {
    1.3d[] a = [];
    a[3] = 1.3d;
    io:println(a); // @output [1.3,1.3,1.3,1.3]

    decimal[] b = [];
    b[3] = 1.4;
    io:println(b); // @output [0,0,0,1.4]
}
