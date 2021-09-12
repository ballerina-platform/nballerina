// @productions float multiplicative-expr floating-point-literal return-stmt unary-expr additive-expr function-call-expr assign-stmt local-var-decl-stmt

import ballerina/io;

public function main() {
    io:println(floatSub(1.0, 2.0)); // @output -1.0
    io:println(floatSub(1.0, 1.0)); // @output 0.0
    io:println(floatSub(0.0, -0.0)); // @output 0.0
    io:println(floatSub(-0.0, 0.0)); // @output -0.0
    io:println(floatSub(0.0, 0.0)); // @output 0.0
    io:println(floatSub(0.0/0.0, 1.0)); // @output NaN
    io:println(floatSub(0.0/0.0, 0.0/0.0)); // @output NaN
    io:println(floatSub(1.0/0.0, 20f)); // @output Infinity
    io:println(floatSub(-1.0/0.0, 1.0/0.0)); // @output -Infinity
    io:println(floatSub(-1.0/0.0, 100.0)); // @output -Infinity
    
    io:println(1.0 - 2.0); // @output -1.0
    io:println(1.0 - 1.0); // @output 0.0
    io:println(0.0 - -0.0); // @output 0.0
    io:println(-0.0 - 0.0); // @output -0.0
    io:println(0.0 - 0.0); // @output 0.0
    io:println(0.0/0.0 - 1.0); // @output NaN
    io:println(0.0/0.0 - 0.0/0.0); // @output NaN
    io:println(1.0/0.0 - 20f); // @output Infinity
    io:println(-1.0/0.0 - 1.0/0.0); // @output -Infinity
    io:println(-1.0/0.0 - 100.0); // @output -Infinity

    float f1 = 4.0;
    io:println(46.0 - f1); // @output 42.0
    float f2 = 46.42;
    io:println(f1 - f2); // @output -42.42
    f2 = -1.0/0.0;
    io:println(f2 - 2f); // @output -Infinity
}

function floatSub(float f1, float f2) returns float {
    return f1 - f2;
}
