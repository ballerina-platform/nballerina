import ballerina/io;

public function main() {
    float f = 0x2B;
    io:println(f); // @output 43.0
    float f2 = 0X2;
    io:println(f2); // @output 2.0
    float f3 = 12;
    io:println(f3); // @output 12.0
}
