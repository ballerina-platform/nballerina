import ballerina/io;
public function main() {
    decimal d1 = 1d;
    decimal d2 = 1d;
    io:println(d1 / d2); // @output 1

    d1 = -1d;
    d2 = 1d;
    io:println(d1 / d2); // @output -1

    d1 = 0d;
    d2 = -1d;
    io:println(d1 / d2); // @output 0

    d1 = 9.999999999999999999999999999999999E6144d;
    d2 = 9.999999999999999999999999999999999E6144d;
    io:println(d1 / d2); // @output 1

    d1 = 9.999999999999999999999999999999999E-6001d;
    d2 = 0.5E143d;
    io:println(d1 / d2); // @output 2.000000000000000000000000000000000E-6143
}
