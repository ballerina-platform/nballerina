import ballerina/io;
public function main() {
    decimal d1 = 1d;
    decimal d2 = 1e-6143d;
    decimal d3 = 9.999999999999999999999999999999999e6144d;
    io:println(d1); // @output 1
    io:println(d2); // @output 1E-6143
    io:println(d3); // @output 9.999999999999999999999999999999999E+6144

    any x = d2;
    io:println(x); // @output 1E-6143

    decimal _ = 1.2;
}
