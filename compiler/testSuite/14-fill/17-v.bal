import ballerina/io;
type R record {|
    int a;
|};

public function main() {
    [R, int, int] a = [{ a: 1 }];
    io:println(a); // @output [{"a":1},0,0]
    [R, int...] b = [{ a: 1 }];
    io:println(b); // @output [{"a":1}]
    b[2] = 10;
    io:println(b); // @output [{"a":1},0,10]
}
