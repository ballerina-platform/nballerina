import ballerina/io;

type Point record {|
    int x;
    int y;
|};

public function main() {
    Point p = { x: 3, y: 4 };
    p.x |= p.y;
    io:println(p.x); // @output 7
    io:println(p.y); // @output 4
}
