import ballerina/io;

public function main() {
    io:println(<float>g(true)); // @output 8.0
    io:println(<float>g(false)); // @output 5.5
}

function g(boolean isInt) returns int|float|boolean {
    if isInt {
        return 8;
    }
    else {
        return 5.5;
    }
}
