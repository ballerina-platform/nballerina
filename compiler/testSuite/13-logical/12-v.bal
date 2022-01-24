public function main() {
    boolean b = true;
    int|string x = 1;
    if  x is string || b {
        int|string _ = x;
        return;
    }
    int _ = x;
}
