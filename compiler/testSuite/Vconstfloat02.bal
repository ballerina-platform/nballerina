import ballerina/io;

const A = 0.0 / 0.0;
const B = -0.0 / 0.0;
const C = 1.0 / 0.0;
const D = -1.0 / 0.0;
const E = -0.0;
const F = 0.0;

public function main() {
    io:println(eq(A, B)); // @output true
    io:println(eq(C, D)); // @output true
    io:println(E); // @output 0
    io:println(F); // @output 0
    io:println(eq(E, F)); // @output true
}

function eq(float f1, float f2) returns any {
    boolean eq = f1 == f2;
    return eq;
}