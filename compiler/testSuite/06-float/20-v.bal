// @productions float multiplicative-expr floating-point-literal return-stmt unary-expr function-call-expr assign-stmt local-var-decl-stmt

import ballerina/io;

public function main() {
    io:println(floatMul(3.0, 2.0)); // @output 6.0
    io:println(floatMul(1.0, 0.0)); // @output 0.0
    io:println(floatMul(0.0, -1.0)); // @output -0.0
    io:println(floatMul(0.0, -0.0)); // @output -0.0
    io:println(floatMul(0.0/0.0, 1.0)); // @output NaN
    io:println(floatMul(0.0/0.0, 0.0/0.0)); // @output NaN
    io:println(floatMul(1.0/0.0, 20f)); // @output Infinity
    io:println(floatMul(-1.0/0.0, 1.0/0.0)); // @output -Infinity
    io:println(floatMul(-1.0/0.0, 0f)); // @output NaN
    
    io:println(3.0 * 2.0); // @output 6.0
    io:println(1.0 * 0.0); // @output 0.0
    io:println(0.0 * -1.0); // @output -0.0
    io:println(0.0 * -0.0); // @output -0.0
    io:println(0.0/0.0 * 1.0); // @output NaN
    io:println(0.0/0.0 * 0.0/0.0); // @output NaN
    io:println(1.0/0.0 * 20f); // @output Infinity
    io:println(-1.0/0.0 * 1.0/0.0); // @output -Infinity
    io:println(-1.0/0.0 * 0f); // @output NaN

    float f1 = 2.0;
    io:println(21.0 * f1); // @output 42.0
    float f2 = 21.21;
    io:println(f1 * f2); // @output 42.42
    f2 = -1.0/0.0;
    io:println(f2 * 2f); // @output -Infinity
}

function floatMul(float f1, float f2) returns float {
    return f1 * f2;
}
