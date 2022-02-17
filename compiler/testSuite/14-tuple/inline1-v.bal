import ballerina/io;

type T 1|2|3;

public function main() {
    [int, int] p = [17, 42];
    io:println(p); // @output [17,42]
    [int, string, boolean] t1 = [2, "x", true];
    io:println(t1); // @output [2,"x",true]
    [T, string] t2 = [2, "test"];
    io:println(t2); // @output [2,"test"]
    [int...] t3 = [2, 4, 6];
    io:println(t3); // @output [2,4,6]
    [string, int...] t4 = ["test", 2, 4];
    io:println(t4); // @output ["test",2,4]
}
