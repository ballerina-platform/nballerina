public function main() {
    int|string|float x = 1;
    if x is int || x is float {
        int|float _ = x;
        return;
    }
    string _ = x;
}
