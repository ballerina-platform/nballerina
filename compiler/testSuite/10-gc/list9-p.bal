import ballerina/io;

// @small_heap 248
public function foo() {
    any[] b = [[114, 115, 116, 117], [118, 119, 120, 121, 122], [123, 124, 125, 126, 127, 128]]; // @panic heap is not enough
    io:println(b);
}

public function main() {
    foo();
}

// This test is failing due to location is duplicated
// Rethink a robust way of solving this
// import ballerina/io;

// // @small_heap 160
// public function foo() {
//     any[] b = [[114], [118], [123]]; // @panic heap is not enough
//     io:println(b);
// }

// public function main() {
//     foo();
// }