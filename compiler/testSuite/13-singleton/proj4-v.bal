import ballerina/io;

type Point record {|
    int x;
    int y;
|};

type SPoint record {|
    int x;
    int y;
    string z;
|};

type XY "x"|"y"|"z";

public function main() {
    SPoint|Point p = { x: 44, y: 88, z: "point" };
    XY xy = "z";
    int|string? x = p[xy];
    io:println(x); // @output point

    p = {x: 44, y: 88 };
    int|string? y = p[xy];
    io:println(y); // @output ()
}
