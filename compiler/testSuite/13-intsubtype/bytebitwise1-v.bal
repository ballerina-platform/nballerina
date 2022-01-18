import ballerina/io;

public function main() {
    and();
    or();
}

function and() {
    byte x = 0xFF;
    int y = 0x1204;
    byte n = x & y;
    io:println(n); // @output 4
}

function or() {
    byte x = 0xF0;
    byte y = 0x0F;
    byte b = x|y;
    io:println(b);  // @output 255
}
