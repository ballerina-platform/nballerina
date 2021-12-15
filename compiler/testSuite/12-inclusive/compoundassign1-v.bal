import ballerina/io;

type R record {
    float x;
    int n;
};

public function main() {
    R r = { x: 1.5, n: 5 };
    r["x"] += 1;
    r["n"] -= 2;
    io:println(r["x"]); // @output 2.5
    io:println(r["n"]); // @output 3
}
