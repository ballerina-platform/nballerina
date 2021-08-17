import ballerina/io;

const A = -3f;
const B = -(3f - 1f);
const C = 3f + 10f / 2f;
const D = 5.0 === 5f;
const E = 5f != 5f;
const F = 1f + 2.5 + 0.1f + 0.1;
public function main() {
    io:println(A); // @output -3
    io:println(B); // @output -2
    io:println(C); // @output 8
    io:println(D); // @output true
    io:println(E); // @output false
    io:println(F); // @output 3.7

}
