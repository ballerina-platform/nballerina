import ballerina/io;

const Inf = 1.0/0.0;

public function main() {
    if 1.0/0.0 != Inf {
        io:println("no");
    }
    else {
        io:println("yes"); // @output yes
    }
}
