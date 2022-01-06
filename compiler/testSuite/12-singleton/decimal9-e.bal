import ballerina/io;

public function foo(decimal d) returns decimal {
    if d == 1d {
        if 1 + <int>d != 2 {
            io:println("unreachable"); // @error
        }
    }
    return d;
}
