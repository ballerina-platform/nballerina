import ballerina/io;

type T1 1|2|3;
type T2 string|true;

public function main() {
    [T1] p = [1];
    io:println(p); // @output [1]
    [int] t1 = [21];
    io:println(t1); // @output [21]
    [T2...] t2 = [true, "test", true];
    io:println(t2); // @output [true,"test",true]
    [(int|float)] t3 = [2.5];
    io:println(t3); // @output [2.5]
    [(int|float)...] t4 = [4.5, 2, 4];
    io:println(t4); // @output [4.5,2,4]
    [(T1|float)] t5 = [2.5];
    io:println(t5); // @output [2.5]
    [(T1|float)...] t6 = [4.5, 2, 1];
    io:println(t6); // @output [4.5,2,1]
    [(T1|float)] t7 = [2];
    io:println(t7); // @output [2]
    [(T1|float), string] t8 = [2, "test"];
    io:println(t8); // @output [2,"test"]
    [(T1|float), string...] t9 = [2, "test1", "test2"];
    io:println(t9); // @output [2,"test1","test2"]
}
