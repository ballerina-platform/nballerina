import ballerina/io;

type R record {| int x; |};

public function main() {
    R[] m = [];
    m[1].x = 42;  // @panic no filler value
    io:println(m[1]);
}
