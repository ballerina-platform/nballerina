import ballerina/io;

type R record {|
    int[] x;
    int[] y;
    string[] z;
|};

type K "x"|"y";

public function main() {
    R r = { x: [1], y: [2], z: [] };
    K k = "x";
    int[]? x = r[k];
    if x != () {
        io:println(x[0]); // @output 1
    } 
}
