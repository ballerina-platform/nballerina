import ballerina/io;

public function main() {
    map<int> m = { x: 3 };
    io:println(-checkpanic nonNil(m["x"])); // @output -3
}

function nonNil(int? n) returns int|error {
    if n == () {
        return error("nil");
    }
    else {
        return n;
    }
}

