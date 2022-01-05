import ballerina/io;

public function main() {
    int|boolean|float|string x = "ok";
    if x is int|boolean {
        if x is int {
            return;
        }
    }
    else {
        if x is float {
            return;
        }
    }
    boolean|string bs = x;
    io:println(bs); // @output ok
}
