import ballerina/io;

public function foo(decimal d) returns decimal {
    if d == 1d {
        if (2 | <int>d) != 3 {
            io:println("unreachable"); // @error
        }
    }
    return d;
}