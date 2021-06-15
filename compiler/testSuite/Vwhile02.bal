import ballerina/io;

public function main() {
    printInts(5);
    // @output 5
    // @output 4
    // @output 3
    // @output 2
    // @output 1
}

function printInts(int maxExclusive) {
    int i = maxExclusive;
    while 0 <= decrease(i) {
        io:println(i);
        i = decrease(i);
    }
}

function decrease(int x) returns int {
    return x - 1;
}
