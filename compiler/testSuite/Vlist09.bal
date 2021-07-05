import ballerina/io;

public function main() {
    any[] v = [1];
    any n = 2;
    v[0] = n;
    io:println(v[0]); // @output 2
}