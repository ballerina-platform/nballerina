// @small_heap 64
import ballerina/io;

public function main() {
    any[] v1 = [111, 222];
    any[] v2 = [333, 444]; // Collection should happen here
    any[] v3 = [555]; // @panic heap is not enough
    io:println(v2[0]);
}
