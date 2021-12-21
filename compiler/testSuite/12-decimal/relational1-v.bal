import ballerina/io;
public function main() {
    decimal x = 1d;
    decimal y = 3.5d;
    decimal z = 3.5d;
    io:println(x <= y); // @output true
    io:println(x >= y); // @output false
    io:println(y < x); // @output false
    io:println(y > x); // @output true
    io:println(y >= z); // @output true
    io:println(y <= z); // @output true
}
