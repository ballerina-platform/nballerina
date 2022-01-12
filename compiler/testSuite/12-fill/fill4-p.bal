import ballerina/io;

type R2 record {| R1 x; |};
type R1 record {| int y; |};

public function main() {
    map<R2> m = {};
    m["foo"].x.y = 42;  // @panic no filler value
    io:println(m["foo"]);
}
