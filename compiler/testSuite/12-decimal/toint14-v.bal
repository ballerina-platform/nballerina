import ballerina/io;
public function main() {
    float|decimal x = 1.2f;
    io:println(<int>x); // @output 1
}
