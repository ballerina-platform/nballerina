import ballerina/io;

public function main() {
    int|boolean|float x = 0.1;
    if x is int {
        return;
    }
    boolean|float bf1 = x;
    io:println(bf1);

    x = true;
    boolean|float bf2 = x; // @error
    io:println(bf2);
}
