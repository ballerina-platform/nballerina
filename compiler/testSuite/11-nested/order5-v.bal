import ballerina/io;

public function main() {
    boolean[][] b1 = [[true]];
    boolean[][] b2 = [[true], []];
    boolean[]?[] b3 = [[true], ()];

    io:println(b1 < b2); // @output true
    io:println(b2 < b3); // @output false
    io:println(b2 > b3); // @output false
    io:println(b3 > b1); // @output true

    string[][] s1 = [["a"]];
    string[][] s2 = [["a"], []];
    string[]?[] s3 = [["a"], ()];

    io:println(s2 > s1); // @output true
    io:println(s2 < s3); // @output false
    io:println(s2 > s3); // @output false
    io:println(s1 < s3); // @output true

    float[][] f1 = [[80.0]];
    float[][] f2 = [[0.0 / 0.0]];

    io:println(f1 > f2); // @output false
    io:println(f2 > f2); // @output false
}
