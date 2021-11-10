import ballerina/io;

public function main() {
    int[] v1 = [42];
    (int|float)[]&(int|string)[] v2 = v1;
    v1 = v2;
    int n = v2[0];
    io:println(n); // @output 42
}
