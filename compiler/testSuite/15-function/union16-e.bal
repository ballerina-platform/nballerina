import ballerina/io;
type F function(int) returns int;
type G function(int) returns string;

type FG F|G;

public function main() {
    FG f = fooBar; // @error
    io:println(f(10));
}

function fooBar(any x) returns int|string {
    return 10;
}
