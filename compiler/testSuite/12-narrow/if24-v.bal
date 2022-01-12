import ballerina/io;

public function main() {
    io:println(next(0)); // @output 1
    io:println(next(false)); // @output true
}

function next(int|boolean x) returns int|boolean {
    if x is int {
        return x + 1;
    }
    else {
        return !x;
    }
}
