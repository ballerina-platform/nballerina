import ballerina/io;

public function main() {
    int[][] v = [];
    v[1] = [17];
    int[] v0 = v[0];
    io:println(v0.length()); // @output 0
    v0[0] = 21;
    io:println(v0[0]); // @output 21
}
