import ballerina/io;

const A = -3f;
const B = -(3f - 1f);
const C = 3f + 10f / 2f;
const D = 1f + 2.5 + 0.1f + 0.1;
public function main() {
    io:println(A); // @output -3
    io:println(B); // @output -2
    io:println(C); // @output 8
    io:println(D); // @output 3.7

}
