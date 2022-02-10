import ballerina/io;
public function main() {
    byte a = 5;
    byte b = 0;
    int c = a / b; // @panic divide by zero
    io:println(c);
}
