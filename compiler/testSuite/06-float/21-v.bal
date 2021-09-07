
import ballerina/io;

public function main() {
    io:println(floatMul(3.0, 2.0)); // @output 1.5
    io:println(floatMul(-1.0, 2.0)); // @output -0.5
    io:println(floatMul(0.0, -0.0)); // @output NaN
    io:println(floatMul(0.0, 0.0)); // @output NaN
    io:println(floatMul(0.0/0.0, 1.0)); // @output NaN
    io:println(floatMul(0.0/0.0, 0.0/0.0)); // @output NaN
    io:println(floatMul(1.0/0.0, 20f)); // @output Infinity
    io:println(floatMul(-1.0/0.0, 1.0/0.0)); // @output NaN
    io:println(floatMul(-1.0/0.0, 0f)); // @output -Infinity
    
    io:println(3.0 / 2.0); // @output 1.5
    io:println(-1.0 / 2.0); // @output -0.5
    io:println(0.0 / -0.0); // @output NaN
    io:println(0.0 / 0.0); // @output NaN
    io:println((0.0/0.0) / 1.0); // @output NaN
    io:println((0.0/0.0) / (0.0/0.0)); // @output NaN
    io:println((1.0/0.0) / 20f); // @output Infinity
    io:println((-1.0/0.0) / (1.0/0.0)); // @output NaN
    io:println((-1.0/0.0) / 0f); // @output -Infinity

    float f1 = 2.0;
    io:println(84.0 / f1); // @output 42.0
    float f2 = 0.04714757190004715;
    io:println(f1 / f2); // @output 42.42
    f2 = -1.0/0.0;
    io:println(f2 / 2f); // @output -Infinity
}

function floatMul(float f1, float f2) returns float {
    return f1 / f2;
}
