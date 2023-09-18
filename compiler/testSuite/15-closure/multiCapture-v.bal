import ballerina/io;
type F function(int) returns int;
type F1 function(int) returns F;
public function main() {
    int a = 5;
    F1 f1 = function(int y) returns F {
        int b = a;
        a += y;
        return function(int x) returns int {
            a += x;
            return a + b;
        };
    };
    F f = f1(10);
    io:println(a); // @output 15
    int i = f(20);
    io:println(i); // @output 40
    io:println(a); // @output 35
}
