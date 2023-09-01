import ballerina/io;
type F function(int) returns int;
public function main() {
    int a = 5;
    function(int) returns int f = function(int x) returns int {
        a += 1;
        return x + a;
    };
    a = 10;
    int b = a + 5;
    int c = f(b);
    io:println(c); // @output 26
    io:println(a); // @output 11
}
