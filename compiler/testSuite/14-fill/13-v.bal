import ballerina/io;
public function main() {
    byte[] b = [];
    b[3] = 2;
    io:println(b); // @output [0,0,0,2]
}
