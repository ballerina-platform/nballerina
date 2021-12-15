import ballerina/io;
type R record {
    int x;
    int y;
};

public function main() {
    R r = { x: 1, y: 2, "w": 3 };
    io:println(r["w"]); // @output 3
}
