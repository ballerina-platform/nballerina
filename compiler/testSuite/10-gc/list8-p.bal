// @small_heap 112
import ballerina/io;

public function foo() {
    any[] b = [[115], [116]]; // @panic heap is not enough
    io:println(b);
}

public function main() {
    foo();
}