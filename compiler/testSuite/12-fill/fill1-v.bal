import ballerina/io;

public function main() {
    int[][] v = [];
    v[3][7] = 42;
    io:println(v[3][7]); // @output 42
    io:println(v[3].length()); // @output 8
    io:println(v[2].length()); // @output 0
}
