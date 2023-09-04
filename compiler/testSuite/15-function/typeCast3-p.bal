import ballerina/io;

type F1 function(1|2) returns "a"|"b";
type F2 function(2|3) returns "b"|"c";

type Fx F1&F2;

function foo(1|2|3 a) returns "a"|"b" {
    return "b";
}

public function main() {
    F1 f = foo;
    Fx fx = <Fx>f; // @panic bad type cast
    io:println(fx);
}
