import ballerina/io;

const A = 1f + 2f;
const B = 3f - 1f;
const C = 10f / 2f;
const D = 2f * 4f;
const E = 1.5f + 2f;
const F = 3.8f - 1.2f;
const G = 5f / 2f;
const H = 1.5f * 2.5f;

public function main() {
    io:println(A); // @output 3
    io:println(B); // @output 2
    io:println(C); // @output 5
    io:println(D); // @output 8
    io:println(E); // @output 3.5
    io:println(F); // @output 2.6
    io:println(G); // @output 2.5
    io:println(H); // @output 3.75

}
