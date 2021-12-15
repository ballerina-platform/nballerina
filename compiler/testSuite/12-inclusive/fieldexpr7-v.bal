import ballerina/io;

type Point record {
    int x;
    int y;
};

public function main() {
    io:println(origin()["z"]); // @output 10
}

function origin() returns Point {
    Point p = { x: 0, y: 0, "z": 10 };
    return p;
}
