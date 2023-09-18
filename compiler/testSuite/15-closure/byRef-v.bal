import ballerina/io;
type F function(int) returns int;
public function main() {
    int a = 5;
    function(int) returns int f = function(int x) returns int {
        return x + a;
    };
    a = 10;
    int b = a + 5;
    int c = f(b);
    io:println(c); // @output 25
}
