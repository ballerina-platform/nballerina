import ballerina/io;
type Point int[];
type Point2D [int, int];

type IncrementFn function(Point2D, int) returns Point;

public function main() {
    Point2D val = [1, 2];
    IncrementFn fn = point2DIncOverride;
    Point result = fn(val, 1);
    io:println(result); // @output [2,3]
}

function point2DIncOverride(Point point, int increment) returns Point {
    return [point[0] + increment, point[1] + increment];
}
