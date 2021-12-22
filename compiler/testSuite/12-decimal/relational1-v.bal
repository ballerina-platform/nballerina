import ballerina/io;
public function main() {
    decimal x = 1.5d;
    decimal y = 3d;
    decimal z = 3d;
    io:println(x <= y); // @output true
    io:println(x >= y); // @output false
    io:println(y < x); // @output false
    io:println(y > x); // @output true
    io:println(y >= z); // @output true
    io:println(y <= z); // @output true
}
