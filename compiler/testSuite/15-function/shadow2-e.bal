import ballerina/io;
type F function(int) returns int;
public function main() {
    int b = 10;
    F f = function(int x) returns int {
        int b = x + 1; // @error
        return b + 1;
    };
    io:println(b);
    io:println(f(10));
}

