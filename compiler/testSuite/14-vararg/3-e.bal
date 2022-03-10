import ballerina/io;
public function main() {
    io:println(addAllTo(1, 2, "a"));
    io:println(addAllTo(1, 2, 3, "a", "b"));
}

function addAllTo(int... args, string... other) returns int { // @error
    foreach string each in other {
        io:println(each);
    }
    foreach int i in 0 ..< args.length() {
        sum += args[i];
    }
    return sum;
}
