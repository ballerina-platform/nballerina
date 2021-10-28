
import ballerina/io;

type Point record {|
    int x;
    int y;
    int? z;
|};

public function main() {
    Point p = { x: 44, y: 88, z: 48 };
    int? z = p.z;
    io:println(z); // @output 48
}
