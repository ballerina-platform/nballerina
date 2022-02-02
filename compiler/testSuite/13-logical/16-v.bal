public function main() {
    boolean b = true;
    int|string|float x = 1;
    if b && !(x is int) {
        float|string _ = x;
    }

    if b || !(x is int) {
        int|string|float _ = x;
    }
    else {
        int _ = x;
    }
}
