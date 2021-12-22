import ballerina/io;
public function main() {
    io:println(1E-6001d * 1E-143d); // @output 0
    io:println(9.999999999999999999999999999999999E-6001d * 1E-143d); // @output 0
    io:println(1E-6143d * 1E-1d); // @output 0
    io:println(9.999999999999999999999999999999999E-6001d * 0.2E-143d); // @output 0
    io:println(1E-6143d * 1E-6143d); // @output 0
}
