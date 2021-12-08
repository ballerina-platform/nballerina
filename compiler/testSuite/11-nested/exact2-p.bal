type R record {|
    int[] x;
|};

type W record {|
    int?[] x;
|};

public function main() {
    R r = { x: [] };
    W w = r;
    int?[] x = w.x;
    x[0] = (); // @panic bad list store
}
