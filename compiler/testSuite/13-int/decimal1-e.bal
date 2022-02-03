import ballerina/io;

public function main() {
    decimal d = 0x12; // @error
    io:println(d); 
}
