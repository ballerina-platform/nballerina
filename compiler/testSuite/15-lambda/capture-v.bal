import ballerina/io;
type F function(int) returns int;
public function main() {
    int a = 5;
    function(int) returns int f = function(int x) returns int {
        return x + a;
    };
    io:println(a); // @output 5
    io:println(f(5)); // @output 10
}

