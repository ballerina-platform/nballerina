import ballerina/io;

const decimal D1 = 1.1e2d;
const D2 = 1.1e2d;
const D3 = 9.9e23d;
const D4 = D2 + D3;
const decimal D5 = D2 + D3;
const D6 = D2 - D3;
const decimal D7 = D2 - D3;
const D8 = D2 * D3;
const D9 = D3 / D2;
const D10 = D3 % D2;

public function main() {
    io:println(D1); // @output 1.1E+2
    io:println(D2); // @output 1.1E+2
    io:println(D3); // @output 9.9E+23
    io:println(D4); // @output 9.9000000000000000000011E+23
    io:println(D5); // @output 9.9000000000000000000011E+23
    io:println(D6); // @output -9.8999999999999999999989E+23
    io:println(D7); // @output -9.8999999999999999999989E+23
    io:println(D8); // @output 1.089E+26
    io:println(D9); // @output 9E+21
    io:println(D10); // @output 0
}
