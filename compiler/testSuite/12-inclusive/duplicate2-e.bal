
type R record {
    int x;
    float y;
};

public function main() {
    R r = { x: 17, y: 1, "x": 10 }; // @error
}
