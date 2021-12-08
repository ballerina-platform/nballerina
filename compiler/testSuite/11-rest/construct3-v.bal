import ballerina/io;

type R record {|
    int x;
    boolean y;
    string...;
|};

public function main() {
    R r = { x: 28, y: true, "x-stuff": "whatever" };
    int x = r.x;
    io:println(x); // @output 28
    boolean y = r.y;
    io:println(y); // @output true
    string? stuff = r["x-stuff"];
    io:println(stuff); // @output whatever
}
