public function main() {
    [boolean, int] t = [true, 7];
    int i = 0;
    t[i] = 1; // @panic bad list store
}
