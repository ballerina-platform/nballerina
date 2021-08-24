import ballerina/io;

public function main() {
    // @output 1.0
    // @output 0.0
    foo(0.0);
    // @output 1.0
    // @output -0.0
    foo(-0.0);
}

function foo(float x) {
    if x == 0.0 {
        io:println(x + 1.0);
        io:println(x + -0.0);
    }
}