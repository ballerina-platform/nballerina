import ballerina/io;

public function main() {
    int:Unsigned8 n = 27;
    byte b = n;
    n = b;
    io:println(n); // @output 27
}
