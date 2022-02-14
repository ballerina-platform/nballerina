import ballerina/io;

type Pair [int, boolean];

public function main() {
    Pair p = [17, true];
    io:println(p); // @output [17,true]
}
