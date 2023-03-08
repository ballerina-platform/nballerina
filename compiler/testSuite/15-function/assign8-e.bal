import ballerina/io;
type F function(int, int...);

public function main() {
    F f = foo; // @error
    if f is F {
        io:println(f(1));
    }
}


function foo(int x) {
    io:println("unexpected");
}
