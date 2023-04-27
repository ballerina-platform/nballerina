import ballerina/io;
type F1 function(1|2|3|4) returns "a"|"b"|"c";
type F2 function(2|3|4|5) returns "b"|"c"|"d";
type F3 function(3|4|5|6) returns "c"|"d"|"e";

type F F1 & F2 & F3;

public function main() {
    F f = foo;	
    "c"|"b" r1 = f(2);
    io:println(r1); // @output c
    3|4 val = 3;
    "c" r2 = f(val);
    io:println(r2); // @output c
    "c"|"d" r3 = f(5);
    io:println(r3); // @output c
}

function foo(1|2|3|4|5|6 a) returns "c" {
    return "c";
}

