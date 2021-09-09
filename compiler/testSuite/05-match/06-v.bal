import ballerina/io;

public function main() {
    io:println(foo("hello")); // @output 0
    io:println(foo(1)); // @output 1
    io:println(foo(2)); // @output 2
    io:println(foo(3)); // @output 3
    io:println(foo(-4)); // @output 4
}

function foo(any v) returns int {
    if v is int {
        match v {
            1|2|3 => {
                return v;
            }
            _ => {
                return -v;
            }
        }
    }
    return 0;
}