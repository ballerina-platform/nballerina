import ballerina/io;
public function main() {
    int a = 4;
    int b = 1;
    int c = a <<
    b;
    io:println(c); // @output 8
    c <<=
     1;
    io:println(c); // @output 16
}
