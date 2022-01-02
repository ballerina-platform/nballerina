import ballerina/io;

public function main() {
    int|boolean|float x = 0.1;
    if x is int|boolean {
        if x is int {
            return;
        }
        boolean b = x;
        io:println(b);
    }

    boolean|float bf = x;
    io:println(bf); // @output 0.1
}
