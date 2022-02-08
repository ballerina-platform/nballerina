import ballerina/io;
public function main() {
    int:Unsigned32 a = 3037000500;
    int:Unsigned32 b = 3037000500;
    int c = a * b; // @panic arithmetic overflow
    io:println(c);
}
