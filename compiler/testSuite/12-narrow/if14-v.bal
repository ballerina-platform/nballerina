import ballerina/io;

public function main() {
    int|boolean|float x = 8;
    if x is int|boolean {
        x = 40;
        if x is float {
            return;
        }
    }
    else {
        return;
    }
    int|boolean bf1 = x;
    io:println(bf1); // @output 40
}
