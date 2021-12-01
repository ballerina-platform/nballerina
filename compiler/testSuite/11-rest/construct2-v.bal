import ballerina/io;

type R record {|
    int y;
    int x;
    int...;
|};

public function main() {
    R r = { "b": 3, "a": 4, y: 2, x: 1 };
    // The spec doesn't require a particular output order here,
    // but we put required fields in sorted order,
    // followed by optional fields in order specified in constructor
    io:println(r); // @output {"x":1,"y":2,"b":3,"a":4}
}
