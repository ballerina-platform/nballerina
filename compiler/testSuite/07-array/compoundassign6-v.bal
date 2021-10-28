import ballerina/io;

public function main() {
    float[] x = [0.5];
    x[0] += 1;
    io:println(x[0]); // @output 1.5
    x[0] -= 3.0;
    io:println(x[0]); // @output -1.5
}
