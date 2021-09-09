import ballerina/io;

public function main() {
    any[] v = [];
    v[0] = 1;
    io:println(v[0]); // @output 1
}