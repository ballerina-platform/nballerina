public function main() {
    int|string|float x = 1;
    if !(x is string) && !(x is int) {
        float _ = x;
        return;
    }
    int|string _ = x;
}
