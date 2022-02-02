public function main() {
    int|string x = 1;
    boolean|float y = true;
    int|float z = 0.2;
    if x is int && y is float && z is int {
        int _ = x;
        float _ = y;
        int _ = z;
    }
}
