type Point record {|
    int x;
    int y;
|};

type XY "x"|"y"|"z";

public function main() {
    Point p = { x: 44, y: 88 };
    XY xy = "x";
    int x = p[xy]; // @error
}
