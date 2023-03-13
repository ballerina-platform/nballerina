import ballerina/io;
type F function(int);

public function main() {
    F f = foo;
    io:println(f); // @output function
    any g = foo;
    io:println(g); // @output function
}

function foo(int a) {
    io:println("foo", a);
}
