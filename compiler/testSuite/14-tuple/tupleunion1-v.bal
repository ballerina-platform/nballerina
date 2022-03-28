import ballerina/io;
public function main() {
    [int, int]|[float, float, float] t = [6, 7, 8];
    io:println(t[1]); // @output 7.0
}
