
public function main() {
    record {|
        any x;
    |} r = { x: () };
    int[] v = [];
    r["x"] = v; // widens here
    (any|error)[] v2 = <(any|error)[]>r["x"];
    v2[0] = true; // @panic bad list store
}
