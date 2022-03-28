import ballerina/io;

type EmptyTuple [];

public function main() {
    EmptyTuple e1 = [];
    int[] i = [1];
    io:println(i > e1); // @output true
    io:println(e1 > i); // @output false

    EmptyTuple e2 = [];
    io:println(e1 < e2); // @output false

    boolean[0] b0 = [];
    float[0] f0 = [];
    io:println(b0 < f0); // @output false
}
