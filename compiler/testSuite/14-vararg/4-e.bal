import ballerina/io;
public function main() {
    io:println(addAllTo(1, 2));
    io:println(addAllTo(1, 2, 3));
}

function addAllTo((int... args), int base) returns int { // @error
    int sum = base;
    foreach int i in 0 ..< args.length() {
        sum += args[i];
    }
    return sum;
}
