import ballerina/io;

public function foo(decimal d) returns decimal {
    if d == 1d {
        if 1.0 + <float>d != 2.0 {
            io:println("unreachable"); // @error
        }
    }
    return d;
}
