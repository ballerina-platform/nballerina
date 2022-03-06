import ballerina/io;
public function main() {
    io:println(addAll()); // @output 0
    io:println(addAll(1)); // @output 1
    io:println(addAll(1, 2)); // @output 3

    io:println(addAllTo(1)); // @output 1
    io:println(addAllTo(1, 2)); // @output 3
    io:println(addAllTo(1, 2, 3)); // @output 6
}

function addAll(int... args) returns int {
    int sum = 0;
    foreach int i in 0 ..< args.length() {
        sum += args[i];
    }
    return sum;
}

function addAllTo(int base, int... args) returns int {
    int sum = base;
    foreach int i in 0 ..< args.length() {
        sum += args[i];
    }
    return sum;
}
