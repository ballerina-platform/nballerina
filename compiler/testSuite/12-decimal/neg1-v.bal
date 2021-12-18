import ballerina/io;

const D1 = 2.1d;
const D2 = -D1;

const decimal D3 = 2.1e2d;
const decimal D4 = -D3;

public function main() {
    decimal d = 0d;
    io:println(-d); // @output 0

    d = 1d;
    io:println(-d); // @output -1

    d = -1d;
    io:println(-d); // @output 1

    d = 1E-6143d;
    io:println(-d); // @output -1E-6143

    d = 9.999999999999999999999999999999998E6144d;
    io:println(-d); // @output -9.999999999999999999999999999999998E+6144

    io:println(D2); // @output -2.1
    io:println(D4); // @output -2.1E+2
}
