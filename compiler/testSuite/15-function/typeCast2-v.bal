import ballerina/io;

type F1 function(1|2) returns "a"|"b";
type F2 function(2|3) returns "b"|"c";

type Fx F1&F2;

function foo(1|2|3 a) returns "b" {
    return "b";
}

public function main() {
    Fx fx = foo;
    F1 f1 = <F1>fx;
    io:println(f1(1)); // @output b

    F2 f2 = <F2>fx;
    io:println(f2(3)); // @output b

    F1 f11 = foo;
    Fx fxx = <Fx>f11;
    io:println(fxx(3)); // @output b
}
