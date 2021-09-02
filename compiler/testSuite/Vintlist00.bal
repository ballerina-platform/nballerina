import ballerina/io;

public function main() {
    int[] v = [3, 7];
    io:println(v[0] + v[1]); // @output 10
}
