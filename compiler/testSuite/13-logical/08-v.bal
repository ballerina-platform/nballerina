public function main() {
    boolean b = true;
    int|string x = 1;
    if b && x is string {
        string _ = x;
        return;
    }
    int|string _ = x;
}
