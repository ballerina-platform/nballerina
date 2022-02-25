import ballerina/io;

public function main() {
    int[4] i5 = [1, 2];
    io:println(i5); //@output [1,2]
    io:println(i5[1]); //@output 2
    i5[2] = 3;
    io:println(i5); //@output [1,2,3]
    i5 = [4, 5, 6, 7];
    io:println(i5); //@output [4,5,6,7]
    boolean[3] b3 = [true, false, true];
    io:println(b3); //@output [true,false,true]
    io:println(b3[1]); //@output false
    b3[1] = true;
    io:println(b3); //@output [true,true,true]
    int[0] i0 = [];
    io:println(i0); //@output []
    float[3] f3= [1.5, 2.5, 3.5];
    f3[1] += 1.0;
    io:println(f3); //@output [1.5,3.5,3.5]
}