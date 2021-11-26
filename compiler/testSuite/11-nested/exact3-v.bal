import ballerina/io;

type R record {|
    int?[] x;
|};

public function main() {
    R r = { x: [] };
    int[] v = [255];
    r.x = v; // r.x now contains inexact ptr
    int?[] x = r.x;
    io:println(x[0]); // @output 255
}
