import ballerina/io;
public function main() {
    int:Unsigned16 y = 500;

    int:Unsigned8 x2 = y >> 1; // @error
    io:println(x2);
}
