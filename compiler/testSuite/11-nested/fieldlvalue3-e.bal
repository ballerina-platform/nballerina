type R record {|
    map<int> m;
|};

public function main() {
    R r = { m: {} };
    r.m.x = 32; // @error
}
