import ballerina/io;

public function main() {
    int[] x = [10];
    x[0] += 3;
    io:println(x[0]); // @output 13
    x[0] -= 2;
    io:println(x[0]); // @output 11
    x[0] *= 4;
    io:println(x[0]); // @output 44
    x[0] /= 2;
    io:println(x[0]); // @output 22
    x[0] &= 5;
    io:println(x[0]); // @output 4
    x[0] |= 9;
    io:println(x[0]); // @output 13
    x[0] ^= 2;
    io:println(x[0]); // @output 15
    x[0] <<= 7; 
    io:println(x[0]); // @output 1920
    x[0] >>=6;
    io:println(x[0]); // @output 30
    x[0] >>>=2;
    io:println(x[0]); // @output 7
}
