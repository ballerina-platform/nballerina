import ballerina/io;

type T record {|
    int[] x;
|};

public function main() {
    T v = { x: [42] };
    io:println(v.x[0]); // @output 42
}
