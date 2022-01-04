import ballerina/io;


function foo(decimal d) returns decimal {
    if d == 1d {
        return -d;
    }
    return d;
}

public function main() {
    io:println(foo(1.00)); // @output -1.00
}
