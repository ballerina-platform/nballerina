import ballerina/io;

const ZERO = 0.0;

public function main() {
    foo(0.0);
}

function foo(float f) {
    if f == 0.0 {
        if f != ZERO {
            io:println("unreached"); // @error
        }
    }
}
