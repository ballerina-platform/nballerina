public function main() {
    [[int], [int?]] t = [[17],[21]];
    int i = 0;
    [int?]v = t[i];
    v[0] = (); // @panic bad list store
}
