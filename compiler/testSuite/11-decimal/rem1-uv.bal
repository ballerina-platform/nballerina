import ballerina/io;

public function main() {
    io:println(9.05d % 0.1d); // @output 0.05
    io:println(9.0E31d % 1E-2d); // @output 0
    io:println(9.05E-6142d % 0.1E-6142d); // @output 0
    io:println(9.00005d % 0.0001d); // @output 0.00005
}
