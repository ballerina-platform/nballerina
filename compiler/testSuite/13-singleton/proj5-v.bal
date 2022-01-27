import ballerina/io;

type Point record {|
    int x;
    int y;
    float...;
|};

type SPoint record {|
    int x;
    int y;
    string z;
|};

type XY "x"|"y"|"z";

public function main() {
    SPoint sPoint = { x: 44, y: 88, z: "point" };
    SPoint|Point p = sPoint;
    XY xy = "z";
    int|string|float? x = p[xy];
    io:println(x); // @output point
    
    Point point = { x: 44, y: 88, "z": 2.0 };
    p = point;    
    int|string|float? y = p[xy];
    io:println(y); // @output 2.0
}
