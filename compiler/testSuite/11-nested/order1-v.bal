import ballerina/io;

public function main() {
    int[][] a = [[1], [2]];
    int[][] b = [[1], [3]];
    io:println(a < b); // @output true
    io:println(a > b); // @output false

    int[]?[] c = [[0], [-1]];
    int[][] d = [[0], [-2]];
    io:println(c < d); // @output false
    io:println(c > d); // @output true

    int[]?[] e = [(), [1]];
    int[][] f = [[0], [1]];
    io:println(e == f); // @output false
    io:println(e < f); // @output false
    io:println(e > f); // @output false
}
