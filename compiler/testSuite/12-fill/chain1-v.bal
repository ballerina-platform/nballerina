import ballerina/io;

public function main() {
    int[][] v = [[17]];
    v[0][0] += 3;
    io:println(v[0][0]); // @output 20
}