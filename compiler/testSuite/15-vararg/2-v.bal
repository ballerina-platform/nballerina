import ballerina/io;
public function main() {
    io:println(addAllTo(1, 2)); // @output 3
    io:println(addAllTo(1, 2, 3)); // @output 6
}

function addAllTo(int base, int... args) returns int {
    int sum = base;
    foreach int i in 0 ..< args.length() {
        sum += args[i];
    }
    return sum;
}
