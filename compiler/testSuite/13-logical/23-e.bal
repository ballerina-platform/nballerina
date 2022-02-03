public function main() {
    int|string x = 1;
    boolean a = true;
    boolean b = false;
    if true || x == 0.1 && a && b { // @error
    }
    _ = x;
}
