import ballerina/io;

public function main() {
    int|boolean|float x = 0.1;
    if x is boolean {
        return;
    }
    else if x is int {
        return;
    } // pr-todo: pointless narrowings generated here
    float f = x;
    io:println(f); // @output 0.1
}
