import ballerina/io;
type F function(int) returns int;

public function main() {
    F|int f = foo;
    if f is function {
        io:println(f(1)); // @output 2
    }
    else {
        io:println("unexpected");
    }
    F? g = foo;
    if g == () {
        io:println("unexpected");
    }
    else {
        io:println(g(2)); // @output 3
    }
    F? h = ();
    if h == () {
        io:println("working"); // @output working
    }
    else {
        io:println(h(3));
    }
}

function foo(int a) returns int {
    return a + 1;
}
