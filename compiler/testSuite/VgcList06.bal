import ballerina/io;

// @small_heap 96
public function main() {
    any[] x = [2];
    any[] v = [1];
    any n = 24;
    v[1] = n; // Collection should happen here
    io:println(v); // @output [1,24]
}