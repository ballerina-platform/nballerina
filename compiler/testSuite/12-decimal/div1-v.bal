import ballerina/io;
public function main() {
    io:println(1d / 1d); // @output 1
    io:println(-1d / 1d); // @output -1
    io:println(0d / -1d); // @output 0
    io:println(9.999999999999999999999999999999999E6144d / 9.999999999999999999999999999999999E6144d); // @output 1
    io:println(9.999999999999999999999999999999999E-6001d / 0.5E143d); // @output 2.000000000000000000000000000000000E-6143
}
