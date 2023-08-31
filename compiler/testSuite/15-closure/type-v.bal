import ballerina/io;

type F1 function(int) returns int;
type F2 function(int, int) returns int;
type Fs function(int|string) returns int;

public function main() {
    final int base = 10;
    F2 f = function(int... vals) returns int {
        int sum = base;
        foreach int i in 0 ..< vals.length() {
            sum += vals[i];
        }
        return sum;
    };
    io:println(f(2, 3)); // @output 15
    if f is F1 {
        io:println(f(1)); // @output 11
    }
    else {
        io:println("unexpected");
    }
    if f is Fs {
        io:println("unexpected");
    }
}
