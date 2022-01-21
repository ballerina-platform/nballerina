public function main() {
    int|string|float x = 1;
    if x is string|int && x is string|float {
        string _ = x;
        return;
    }
    int|float _ = x;
}
