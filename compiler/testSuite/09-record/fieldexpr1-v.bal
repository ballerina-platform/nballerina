import ballerina/io;

type Point record {|
    int x;
    int y;
|};

public function main() {
    Point p = { x: 44, y: 88 };
    int x = p.x;
    io:println(x); // @output 44
}
