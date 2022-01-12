import ballerina/io;

public function main() {
    int|boolean|float x = 0.1;

    if x is int {
        return;
    }

    x = true;

    if x is int {
        return;
    }

    boolean|float bf2 = x;
    io:println(bf2); // @output true
}
