import ballerina/io;
public function main() {
    decimal x = 5d;
    io:println(1d < 2d); // @output true
    io:println(2d < 1.5d); // @output false
    io:println(1.5d <= 3d); // @output true
    io:println(1.5d >= 3d); // @output false
    io:println(x >= 3d); // @output true
}