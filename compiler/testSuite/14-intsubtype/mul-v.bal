import ballerina/io;
public function main() {
    byte x = 5;
    byte y = 3;
    byte z = 0;
    int i = x * y;
    int j = x * z;
    io:println(i); //@output 15
    io:println(j); //@output 0
    int:Signed32 a = 2147483647;
    int:Signed32 b = 2147483647;
    int c = a * b;
    io:println(c); //@output 4611686014132420609
    int:Signed32 d = -2147483647;
    int e = d * a;
    io:println(e); //@output -4611686014132420609
}
