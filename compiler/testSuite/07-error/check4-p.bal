import ballerina/io;

public function main() {
    map<int> m = { x: 1 };
    io:println(-checkpanic nonNil(m["y"]));
}

function nonNil(int? n) returns int|error {
    if n == () {
        return error("nil"); // @panic nil
    }
    else {
        return n;
    }
}
