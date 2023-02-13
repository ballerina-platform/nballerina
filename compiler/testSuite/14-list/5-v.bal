import ballerina/io;
public function main() {
    any a = [1, 2] < [3, 1];
    io:println(a); // @output true
    io:println([1, 2] < [1, 2]); // @output false
    boolean b = [1, 2] > [3];
    io:println(b); // @output false
    io:println([10, -1, -1] > [0]); // @output true
}
