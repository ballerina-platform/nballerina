import ballerina/io;

public function main() {
    int[][][] v = [];
    v[0][0] = [];
    v[0][0].push(17);
    io:println(v[0][0][0]); // @output 17
}
