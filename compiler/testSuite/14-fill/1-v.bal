import ballerina/io;
public function main() {
    1[] a = [];
    a[3] = 1;
    io:println(a); // @output [1,1,1,1]
}
