import ballerina/io;
type F function(int) returns int;
public function main() {
    int a = 5;
    F f = function(int x) returns int {
        a += 1;
        return x + a;
    };
    a = 10;
    F f1 = function(int x) returns int {
        a += 2;
        return x + a;
    };
    int b = a + 5;
    int c = f(b);
    io:println(c); // @output 26
    io:println(a); // @output 11
    int d = f1(10);
    io:println(a); // @output 13
    io:println(d); // @output 23
    io:println(f(6)); // @output 20
    io:println(a); // @output 14
}
