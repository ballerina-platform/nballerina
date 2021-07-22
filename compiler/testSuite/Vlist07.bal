import ballerina/io;
public function main() {
    any[] v = [1, 2, 3, 4];
    v.push(5);
    io:println(v); // @output [1,2,3,4,5]
    io:println(v.length()); // @output 5
}
