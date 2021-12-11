type R record {|
    int?[] x;
    int[]...;
|};

public function main() {
    R r = { x: [], "y": [] };
    string k = "y";
    int?[]? xy = r[k];
    if xy != () {
        xy[0] = (); // @panic bad list store
    }
}
