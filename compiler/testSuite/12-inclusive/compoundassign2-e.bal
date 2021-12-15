type R record {
    float x;
    int n;
};

public function main() {
    R r = { x: 1.5, n: 5 };
    r["z"] += 1; // @error
}
