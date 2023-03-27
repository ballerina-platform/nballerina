import ballerina/io;
type F function(int) returns int;

public function main() {
    F f = foo;
    if f is F { // @error
        io:println(f(1));
    }
}


function foo(int x) {
    io:println("unexpected");
}
