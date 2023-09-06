import ballerina/io;
type F function(int) returns int;
type F1 function(int) returns F;
public function main() {
    final int[] arr = [5];
    F1 f1 = function(int y) returns F {
        int b = y * 2;
        return function(int x) returns int {
            arr.push(x + b);
            return arr[0] + arr[1];
        };
    };
    F f = f1(10);
    io:println(arr); // @output [5]
    int i = f(20);
    io:println(i); // @output 45
    io:println(arr); // @output [5,40]
}
