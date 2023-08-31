import ballerina/io;
type F function(int) returns int;
public function main() {
    F f = function(int a) returns int {
        return a + b; // @error
    };
    int b = 10;
    io:println(b);
    io:println(f(10));
}

