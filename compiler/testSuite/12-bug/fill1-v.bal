import ballerina/io;

public function main() {
    int[][] v = [];
    v[3] = [];
    io:println(v[0] === v[1]); // @output false
    int[] iv = <int[]> v[0];
    iv[0] = 42;
    io:println(v[1].length()); // @output 0
}
