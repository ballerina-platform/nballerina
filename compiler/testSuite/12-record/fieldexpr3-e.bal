import ballerina/io;

type Point record {
    int x;
    int y;
};

public function main() {
    int? z = origin().z; // @error
    io:println(z);
}

function origin() returns Point {
    Point p = { x: 0, y: 0 };
    return p;
}
