import ballerina/io;
public function main() {
    int:Unsigned32 a = 65535;
    int:Unsigned32 b = 65535;
    int:Unsigned32 c = 65535;
    int:Unsigned32 d = 65535;
    int x = a * b * c * d; // @panic arithmetic overflow
    io:println(x);
}
