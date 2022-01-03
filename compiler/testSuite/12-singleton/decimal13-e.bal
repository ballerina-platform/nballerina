import ballerina/io;

public function foo(decimal d) returns decimal {
    if d == -1d {
        if ~<int>d != 0 {
            io:println("unreachable"); // @error
        }
    }
    return d;
}
