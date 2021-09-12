import ballerina/io;

public function main() {
    any[] v = [];
    v[1] = 2;
    io:println(v); // @output [null,2]
}
