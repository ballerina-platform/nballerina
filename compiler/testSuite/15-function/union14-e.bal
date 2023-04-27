import ballerina/io;
type F function(int) returns int;
type G function(int);

type FG F|G;

public function main() {
    FG f = foobar; // @error
    io:println(f(1));
}

function fooBar(int x) returns int? {
    return x + 1;
}
