import ballerina/io;
type F function(int...) returns int;
type F1 function(int, int) returns int;

public function main() {
    final int base = 10;
    F1 f1 = function(int... vals) returns int {
       int sum = base;
       foreach int i in 0 ..< vals.length() {
            sum += vals[i];
       }
       return sum;
    };
    F1 f2 = f1;
    io:println(f1 === f2); // @output true
    F1 f3 = function(int... vals) returns int {
       int sum = base;
       foreach int i in 0 ..< vals.length() {
            sum += vals[i];
       }
       return sum;
    };
    io:println(f1 === f3); // @output false
    F f4 = <F>f1;
    io:println(f1 === f4); // @output true
}
