import ballerina/io;
public function main() {
    int? a = 1;
    int b = 6;
    int? c = a << b;
    io:println(c); // @output 64
}
