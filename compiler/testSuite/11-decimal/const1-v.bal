import ballerina/io;
public function main() {
    io:println(1e+123d); // @output 1E+123
    io:println(1E123d);  // @output 1E+123
    io:println(1E-123d); // @output 1E-123
    io:println(1E-123D); // @output 1E-123
    io:println(1.2e12d); // @output 1.2E+12
    io:println(.2e12d);  // @output 2E+11
    io:println(.2d);     // @output 0.2
    io:println(1d);      // @output 1

    io:println(1e-6143d);   // @output 1E-6143
    io:println(-1e-6143d);  // @output -1E-6143
    io:println(9.999999999999999999999999999999999E6144d);  // @output 9.999999999999999999999999999999999E+6144
    io:println(-9.999999999999999999999999999999999E6144d); // @output -9.999999999999999999999999999999999E+6144
}
