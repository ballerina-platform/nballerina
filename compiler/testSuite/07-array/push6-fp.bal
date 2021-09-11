import ballerina/io;

public function main() {
    int[] x = [];
    any[] y = x;
    y.push(true); // @panic bad list store
    io:println(x[0]);
}
