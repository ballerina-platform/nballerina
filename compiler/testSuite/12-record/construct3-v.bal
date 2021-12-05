import ballerina/io;

type R record {
    int x;
    float y;
};

public function main() {
    R r = { x: 17, y: 1 };
    io:println(r["x"]); // @output 17
    if r["y"] is float {
        io:println(r["y"] + 0.5); // @output 1.5
    }
}
