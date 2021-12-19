import ballerina/io;
public function main() {
    decimal d1 = 1d;
    decimal d2 = 0d;
    io:println(d1 / d2); // @panic divide by zero
}
