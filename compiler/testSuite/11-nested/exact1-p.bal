type R record {|
    int[] x;
    int?[] y;
|};

public function main() {
    R r = { x: [], y: [] };
    string k = "x";
    int[]|int?[]? xy = r[k];
    if xy != () {
        xy[0] = (); // @panic bad list store
    }
}
