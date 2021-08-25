
import ballerina/io;

public function main() {
    io:println(floatAdd(1.0, 2.0)); // @output 3.0
    io:println(floatAdd(-1.0, 1.0)); // @output 0.0
    io:println(floatAdd(-0.0, -0.0)); // @output -0.0
    io:println(floatAdd(-0.0, 0.0)); // @output 0.0
    io:println(floatAdd(0.0/0.0, 1.0)); // @output NaN
    io:println(floatAdd(0.0/0.0, 0.0/0.0)); // @output NaN
    io:println(floatAdd(1.0/0.0, 20.0)); // @output Infinity
    io:println(floatAdd(-1.0/0.0, 1.0/0.0)); // @output NaN
    io:println(floatAdd(-1.0/0.0, 100.0)); // @output -Infinity
    
    io:println(1.0 + 2.0); // @output 3.0
    io:println(-1.0 + 1.0); // @output 0.0
    io:println(-0.0 + -0.0); // @output -0.0
    io:println(-0.0 + 0.0); // @output 0.0
    io:println(0.0/0.0 + 1.0); // @output NaN
    io:println(0.0/0.0 + 0.0/0.0); // @output NaN
    io:println(1.0/0.0 + 20f); // @output Infinity
    io:println(-1.0/0.0 + 1.0/0.0); // @output NaN
    io:println(-1.0/0.0 + 100.0); // @output -Infinity

    float f1 = 4.0;
    io:println(38.0 + f1); // @output 42.0
    float f2 = 38.42;
    io:println(f1 + f2); // @output 42.42
    f2 = -1.0/0.0;
    io:println(f2 + 2f); // @output -Infinity
}

function floatAdd(float f1, float f2) returns float {
    return f1 + f2;
}
