import ballerina/io;

type Point record {
    int x;
    int y;
};

type ColouredPoint record {
    int x;
    int y;
    string colour;
};

type MovePointFn function (Point, int, int) returns Point;
type MoveColouredPointFn function (ColouredPoint, int, int) returns ColouredPoint;
type MoveFn MovePointFn & MoveColouredPointFn;

public function main() {
    MoveFn fn = moveFn;	
    ColouredPoint cp = {x: 10, y: 20, colour: "red"};
    Point cp2 = fn(cp, 10, 20);
    io:println(cp2); // @output {"colour":"red","x":20,"y":40}
    Point p = {x: 10, y: 20};
    Point p2 = fn(p, 10, 20);
    io:println(p2); // @output {"colour":"white","x":20,"y":40}
}

function moveFn(Point p, int dx, int dy) returns ColouredPoint {
    if p is ColouredPoint {
        return moveColoredPoint(p, dx, dy);
    }
    Point movedPoint = movePoint(p, dx, dy);
    return {x: movedPoint.x, y: movedPoint.y, colour: "white"};
}

function movePoint(Point p, int dx, int dy) returns Point {
    p.x = p.x + dx;
    p.y = p.y + dy;
    return p;
}

function moveColoredPoint(ColouredPoint p, int dx, int dy) returns ColouredPoint {
    if p.colour != "white" {
        p.x = p.x + dx;
        p.y = p.y + dy;
    }
    return p;
}
