import ballerina/io;
type F function(int...) returns int;
type F1 function(int, int) returns int;

public function main() {
    F f = function(int... vals) returns int {
        int sum = 0;
        foreach int i in 0 ..< vals.length() {
            sum += vals[i];
        }
        return sum;
    };
    F1 f1 = f;
    io:println(f1 === f); // @output true
}
