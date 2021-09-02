import ballerina/io;

public function main() {
    float[] v = [];
    v[0] = 2;
    io:println(v[0] + 0.5); // @output 2.5
}
