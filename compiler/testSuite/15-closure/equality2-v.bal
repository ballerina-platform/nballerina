import ballerina/io;
type F function(int...) returns int;
type F1 function(int, int) returns int;

public function main() {
    final int base = 10;
    F f = function(int... vals) returns int {
        int sum = base;
        foreach int i in 0 ..< vals.length() {
            sum += vals[i];
        }
        return sum;
    };
    F1 f1 = f;
    io:println(f1 === f); // @output true
}
