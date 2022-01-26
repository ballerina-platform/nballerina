public function main() {
    int|string x = 1;
    if false || x is string {
        string _ = x;
        return;
    }
    int _ = x;
}
