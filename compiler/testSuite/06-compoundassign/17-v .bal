import ballerina/io;

public function main() {
    int[] x = [1,5,7,12];
    x[0] += 2;
    x[1] -= 3;
    x[2] *= 4;
    x[3] /= 3;
    io:println(x[0]); // @output 3
    io:println(x[1]); // @output 2
    io:println(x[2]); // @output 28
    io:println(x[3]); // @output 4
}
