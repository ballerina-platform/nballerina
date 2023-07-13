import ballerina/io;
type F1 function(1|2|3|4) returns "a"|"b"|"c";
type F2 function(2|3|4|5) returns "b"|"c"|"d";
type F3 function(3|4|5|6) returns "c"|"d"|"e";

type F F1 & F2 & F3;

public function main() {
    F f = foo;	
    "c" r1 = f(2); // @error
    io:println(r1);
}

function foo(1|2|3|4|5|6 a) returns "c" {
    return "c";
}
