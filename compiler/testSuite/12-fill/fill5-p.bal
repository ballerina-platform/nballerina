import ballerina/io;

type R2 record {| R1 x; |};
type R1 record {| int y; |};

public function main() {
    R2[] m = [];
    m[1].x.y = 42;  // @panic no filler value
    io:println(m[1]);
}
