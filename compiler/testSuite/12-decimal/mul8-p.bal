import ballerina/io;
public function main() {
    decimal d1 = 1E6144d; 
    decimal d2 = 1E1d;
    io:println(d1 * d2);// @panic arithmetic overflow
}
