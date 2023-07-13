import ballerina/io;
type F1 function(int) returns int;
type F2 function(string) returns int;

type Fx F1&F2;

public function main() {
    Fx fx = foo;
    int r1 = fx(1);
    io:println(r1); // @output 2
    io:println(fx("a")); // @output 0
}

function foo(int|string a) returns int {
    if a is string {
        return 0;
    }
    return a + 1;
}
