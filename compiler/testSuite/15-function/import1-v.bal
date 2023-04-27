import ballerina/io;
type F function(int);
type F1 function(int, int, string...);
public function main() {
    F f = io:println;
    f(1); // @output 1
    F1 f1 = io:println;
    f1(1, 2, "hello", "world"); // @output 12helloworld
}
