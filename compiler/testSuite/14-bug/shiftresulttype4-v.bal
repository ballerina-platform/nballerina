import ballerina/io;
public function main() {
    int:Unsigned8 x = 250;
    int:Unsigned16 y = 500;
    int:Unsigned32 z = 1000000000;

    int:Unsigned8 x1 = x >> 1;
    io:println(x1); // @output 125

    int:Unsigned16 y2 = y >> 1;
    io:println(y2); // @output 250

    int:Unsigned32 z3 = z >> 1;
    io:println(z3); // @output 500000000

    int x11 = x << 1;
    io:println(x11); // @output 500

    int y22 = y << 1;
    io:println(y22); // @output 1000

    int z33 = z << 1;
    io:println(z33); // @output 2000000000
}
