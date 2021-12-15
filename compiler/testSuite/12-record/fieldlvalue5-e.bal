type R record {
    int x;
    float n;
};

public function main() {
    R p = { x: 3, n: 4 };
    p.n |= 3; // @error
}
