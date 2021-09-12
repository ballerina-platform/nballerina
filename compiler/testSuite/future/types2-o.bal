import ballerina/io;

type Int int;
type Nil ();

public function main() {
    foo(21); // @output 21
}

function foo(Int n) returns Nil {
    io:println(n); 
}
