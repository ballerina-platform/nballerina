import ballerina/io;
public function main() {
    io:println(1d * 1d); // @output 1
    io:println(-1d * 1d); // @output -1
    io:println(-1d * 0d); // @output 0
    io:println(1E-6000d * 1E-143d); // @output 1E-6143
    // updated to get wasm tests passing
    io:println(1E6000d * 1E144d); // @output 1E+6144
    io:println(9.999999999999999999999999999999999E6000d * 1E144d); // @output 9.999999999999999999999999999999999E+6144
    io:println(9.999999999999999999999999999999999E6000d * -1E144d); // @output -9.999999999999999999999999999999999E+6144
    io:println(9.999999999999999999999999999999999E6000d * -2E143d); // @output -2.000000000000000000000000000000000E+6144
    io:println(-1E-6143d * 0d); // @output 0
    io:println(1E-6143d * 0d); // @output 0
    io:println(0d * 0d); // @output 0
    io:println(9.999999999999999999999999999999999E-6001d * 2E-143d); // @output 2.000000000000000000000000000000000E-6143
    io:println(1E-6143d * 1E6143d); // @output 1
}
