import ballerina/io;

public function main() {
    int|boolean|float x = 0.1;
    if x is boolean {
        return;
    }
    if x is int {
        return;
    }
    float f = x;
    io:println(f); // @output 0.1
}
