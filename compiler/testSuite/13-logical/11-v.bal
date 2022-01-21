public function main() {
    boolean b = true;
    int|string x = 1;
    if x is string && b {
        string _ = x;
        return;
    }
    int|string _ = x;
}
