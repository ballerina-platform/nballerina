type R record {
    int x;
    int y;
    int z;
};

public function main() {
    R r = { x: 1, z: 2 }; // @error
    _ = r;
}
