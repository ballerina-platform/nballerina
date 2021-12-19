import ballerina/io;
public function main() {
    decimal d1 = 9.0E32d;
    decimal d2 =  1E-2d;
    io:println(d1 % d2); // @panic invalid decimal
}
