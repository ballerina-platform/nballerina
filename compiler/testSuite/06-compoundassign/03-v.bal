// @productions compound-assignment-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = 10;
    x += 3;
    io:println(x); // @output 13
    x -= 2;
    io:println(x); // @output 11
    x *= 4;
    io:println(x); // @output 44
    x /= 2;
    io:println(x); // @output 22
    x &= 5;
    io:println(x); // @output 4
    x |= 9;
    io:println(x); // @output 13
    x ^= 2;
    io:println(x); // @output 15
    x <<= 7; 
    io:println(x); // @output 1920
    x >>=6;
    io:println(x); // @output 30
    x >>>=2;
    io:println(x); // @output 7
}
