import ballerina/io;

type TWO 2;

public function main() {
    (int|string)[3] is3 = [1, 2, 3];
    is3[1] = "t";
    io:println(is3); //@output [1,"t",3]
    (TWO|boolean)[2] tb2 = [2, true];
    tb2[1] = 2;
    io:println(tb2); //@output [2,2]
}
