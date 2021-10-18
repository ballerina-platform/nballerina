
import ballerina/io;

type Point record {|
    int x;
    int y;
|};

public function main() {
    int x = origin().x;
    io:println(x); // @output 0
}

function origin() returns Point {
    Point p = { x: 0, y: 0 };
    return p;
}
