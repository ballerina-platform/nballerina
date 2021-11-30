import ballerina/io;

type R record {|
    int x;
    string...;
|};

public function main() {
    R r = { x: 17 };
    io:println(r.x); // @output 17
}
