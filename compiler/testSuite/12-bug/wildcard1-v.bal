import ballerina/io;

type Int int;

function foo(Int x) returns Int {
   Int _ = x;
   return x;
}

public function main() {
    io:println(foo(17)); // @output 17
}
