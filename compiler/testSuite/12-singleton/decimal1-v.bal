import ballerina/io;


function foo(decimal d) returns decimal {
    if d == 1d {
        return d + 1d;
    }
    return d;
}

public function main() {
    io:println(foo(1.00)); // @output 2.00
}
