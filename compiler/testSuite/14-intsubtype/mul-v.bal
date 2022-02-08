import ballerina/io;
public function main() {
    int:Unsigned16 a = 65535;
    int:Unsigned16 b = 65535;
    int c = a * b;
    io:println(c); //@output 4294836225
    int:Signed16 d = -32767;
    int e = d * a;
    io:println(e); //@output -2147385345
}
