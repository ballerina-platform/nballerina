type R record {
    int x;
    float n;
};

public function main() {
    int[] arr = [2, 16, 48];
    arr.one = 72; // @error
}
