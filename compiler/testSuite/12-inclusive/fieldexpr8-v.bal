import ballerina/io;

type Point record {
    int x;
    int y;
};

public function main() {
    io:println(origin()["z"]); // @output 
}

function origin() returns Point {
    Point p = { x: 0, y: 0 };
    return p;
}
