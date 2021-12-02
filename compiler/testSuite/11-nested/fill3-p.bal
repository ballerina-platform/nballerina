
public function main() {
    int[][] v = [];
    v[1] = [17];
    any[] v0 = v[0];
    v0[0] = (); // @panic bad list store
}
