import ballerina/io;
type F function(int) returns int;
public function main() {
    int a = 5;
    function(int) returns int f = function(int x) returns int {
        return x + a;
    };
    io:println(a); // @output 5
    int b = f(5);
    io:println(b); // @output 10
}

