import ballerina/io;
public function main() {
    int:Signed8 a = 5;
    byte b = 10;
    int c = a + b;
    io:println(c); //@output 15
}
