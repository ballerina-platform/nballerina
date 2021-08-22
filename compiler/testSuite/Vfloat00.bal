import ballerina/io;
public function main() {
    float f = 0.1;
    io:println(f); // @output 0.1

    f = 1.0 / 3.0;
    io:println(f); // @output 0.3333333333333333

    io:println(0.0); // @output 0.0

    io:println(-0.0); // @output -0.0

    io:println(-2.225073858507202E-308); // @output -2.225073858507202e-308

    io:println(0.0 / 0.0); // @output NaN

    io:println(1.0 / 0.0); // @output Infinity

    io:println(-1.0 / 0.0); // @output -Infinity
}
