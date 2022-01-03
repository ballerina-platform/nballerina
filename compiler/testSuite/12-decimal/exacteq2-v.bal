import ballerina/io;
public function main() {
    decimal d1 = 0d;
    decimal d2 = 0d;
    io:println(d1 === d2); // @output true
    d1 = -9.999999999999999999999999999999999E6144d;
    d2 = -9.999999999999999999999999999999999E6144d;
    io:println(d1 === d2); // @output true
    d1 = 0.000001d;
    d2 = 0.000001d;
    io:println(d1 === d2); // @output true
    d1 = 1.0d;
    d2 = 1.00d;
    io:println(d1 === d2); // @output false
    d1 = 0.00000100d;
    d2 = 0.000001d;
    io:println(d1 === d2); // @output false
    d1 = 1E-6142d;
    d2 = 10E-6143d;
    io:println(d1 === d2); // @output false
    d1 = 100E3d;
    d2 = 10E4d;
    io:println(d1 !== d2); // @output true
}
