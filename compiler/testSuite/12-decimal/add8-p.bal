import ballerina/io;
public function main() {
    decimal d1 = 9e6144d; 
    decimal d2 = 1e6144d;
    io:println(d1 + d2); // @panic arithmetic overflow
}
