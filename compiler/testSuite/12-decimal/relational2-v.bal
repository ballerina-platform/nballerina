import ballerina/io;

const decimal x = 1.5d;
const decimal y = 3d;
const z = 3d;

public function main() {
    io:println(x <= y); // @output true
    io:println(x >= y); // @output false
    io:println(y < x); // @output false
    io:println(y > x); // @output true
    io:println(y >= z); // @output true
    io:println(y <= z); // @output true
}
