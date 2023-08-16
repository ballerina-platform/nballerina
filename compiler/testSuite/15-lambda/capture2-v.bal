import ballerina/io;
type F function(int) returns int;
public function main() {
    int a = 5;
    F f = function(int x) returns int {
        F g = function(int y) returns int {
            return x + y;
        };
        return g(x);
    };
    io:println(a); // @output 5
    io:println(f(5)); // @output 10
}

