import ballerina/io;

public function foo(decimal d) returns decimal {
    if d == 1d {
        if !(d + 1d == 2d) {
            io:println("unreachable"); // @error
        }
    }
    return d;
}
