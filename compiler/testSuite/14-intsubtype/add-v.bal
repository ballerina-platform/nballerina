import ballerina/io;
public function main() {
    int:Unsigned32 a = 4294967295;
    io:println(a + a); //@output 8589934590
    int:Signed32 b = -2147483648;
    io:println(b + b); //@output -4294967296
    io:println(a + b); //@output 2147483647
    io:println(0 - a - a); //@output -8589934590
    io:println(-a - a); //@output -8589934590
}
