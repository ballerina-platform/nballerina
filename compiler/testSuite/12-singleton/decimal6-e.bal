import ballerina/io;

public function foo(decimal d) returns decimal {
    if d == 1d {
        if <float>d != 1f {
            io:println("unreachable"); // @error
        }
    }
    return d;
}
