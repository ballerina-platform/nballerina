import ballerina/io;

public function main() {
    int[5] a1 = [1, 2, 3];
    io:println(a1); // @output [1,2,3,0,0]

    [int, string, int, boolean] t1 = [1, "foo"];
    io:println(t1); // @output [1,"foo",0,false]
}
