import ballerina/io;
public function main() {
    1.3[] a = [];
    a[3] = 1.3;
    io:println(a); // @output [1.3,1.3,1.3,1.3]

    float[] b = [];
    b[3] = 1.4;
    io:println(b); // @output [0.0,0.0,0.0,1.4]
}
