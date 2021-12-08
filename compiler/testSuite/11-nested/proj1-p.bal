type R record {|
    int[] x;
    float[] y;
|};

public function main() {
    R r = { x: [], y: [] };
    (int[]|float[])? x = r["x"];
    if x != () {
        x[0] = 1.0; // @panic bad list store
    }
}
