import ballerina/io;

// @small_heap 48
public function main() {
    any[] v = [1];
    any n = 2;
    v[1] = n; // @panic heap is not enough
    io:println(v[0]);
}