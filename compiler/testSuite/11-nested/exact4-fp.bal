
public function main() {
    int[][] r = [[]];
    int?[][] w  = r;
    int?[] w0 = w[0];
    w0[0] = (); // @panic bad list store
}
