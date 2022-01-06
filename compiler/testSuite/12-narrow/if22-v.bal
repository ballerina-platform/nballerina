import ballerina/io;

public function main() {
    int|boolean|float x = 8;
    int|boolean|float y = 0.1;
    if x is boolean {
        return;
    }
    if y is int {
        if x is float {
            return;
        }
        int _ = x;
    }
    io:println(x); // @output 8
}
