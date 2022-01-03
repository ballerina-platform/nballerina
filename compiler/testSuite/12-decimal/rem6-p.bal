import ballerina/io;
public function main() {
    decimal d1 = 9.999999999999999999999999999999998E6144d;
    decimal d2 = 1E-2d;
    io:println(d1 % d2); // @panic not a valid decimal
}
