import ballerina/io;
public function main() {
    foo([1,2,3]); // @output [1,2,3]
}

function foo(int[] v) {
    io:println(v);
}
