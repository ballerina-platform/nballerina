import ballerina/io;
public function main() {
    decimal[] d = [];
    d[1] = 0.1;
    io:println(d[1]); // @output 0.1
}
