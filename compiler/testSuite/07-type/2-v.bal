import ballerina/io;

type Int int;

public function main() {
    any x = 17;
    if x is Int {
        io:println(x + 1); // @output 18
    }
    x = 21;
    int n = <Int>x;
    io:println(n); // @output 21
}

