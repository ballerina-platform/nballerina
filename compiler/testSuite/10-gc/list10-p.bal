import ballerina/io;

// @small_heap 456
public function main() {
    any[] x = [110, [400, [401]]];
    any[] a = [111, [112, [200, 201, [300, 301, 302]]], [113, [150, [151, [152]]]]]; // @panic heap is not enough
    io:println(a);
}