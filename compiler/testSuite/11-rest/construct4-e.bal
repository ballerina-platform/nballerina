import ballerina/io;

type R record {|
    int x;
    boolean y;
    string...;
|};

public function main() {
    R r = { x: 28, y: true, "x-stuff": 21 }; // @error
    io:println(r);
}
