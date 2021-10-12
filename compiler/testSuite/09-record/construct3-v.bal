import ballerina/io;

type R record {|
    int x;
    float y;
|};

public function main() {
    R r = { x: 17, y: 1 };
    int x = r["x"];
    io:println(x); // @output 17
    float y = r["y"];
    io:println(y + 0.5); // @output 1.5
}
