import ballerina/io;
type F1 function(int) returns 1|2|3;
type F2 function(string) returns 2|3|4;

type Fx F1&F2;

public function main() {
    Fx fx = foo;
    1|2|3 r1 = fx(1);
    io:println(r1); // @output 2
    fx = bar;
    r1 = fx(1);
    io:println(fx(r1)); // @output 2
    2|3|4 r2 = fx("aa");
    io:println(r2); // @output 3
}

function foo(int|string a) returns 2 {
    return 2;
}

function bar(int|string a) returns 2|3 {
    if a is int {
        return 2;
    }
    return 3;
}
