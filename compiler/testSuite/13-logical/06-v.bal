public function main() {
    boolean b = true;
    int|string x = 1;
    if b || x is string {
        int|string _ = x;
        return;
    }
    int _ = x;
}
