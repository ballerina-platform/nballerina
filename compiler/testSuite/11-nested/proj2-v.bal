import ballerina/io;

type R record {|
    int[] x;
    float[] y;
    int[] z;
|};

// Equivalent to `int[]` but not atomic
type V (int[]|float[]|int[]) & int[];

public function main() {
    R r = { x: [255], y: [], z: [] };
    any? x = r["x"];
    if x is V {
        int n = x[0];
        io:println(n); // @output 255
        int[] ix = x;
        int n2 = ix[0];
        io:println(n2); // @output 255
    }
}
