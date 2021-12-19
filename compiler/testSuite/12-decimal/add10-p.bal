import ballerina/io;
public function main() {
    decimal d1 = 9.999999999999999999999999999999999E6144d; 
    decimal d2 = 0.000000000000000000000000000000001E6144d;
    io:println(d1 + d2); // @panic arithmetic overflow
}
