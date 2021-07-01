import ballerina/io;
public function main() {
    any[] v = [1, 2, false];
    foo(v); // @output [1,2,false]
}

function foo(any[] v) {
    io:println(v);
}
