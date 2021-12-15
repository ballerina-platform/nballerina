import ballerina/io;

type Point record {
    int x;
    int y;
};

public function main() {
    Point p = { x: 44, y: 88 };
    p.x = 22;
    io:println(p.x); // @output 22
}
