public function main() {
    int[] v1 = [];
    any[] v2 = [];
    v2.push(v1); // widens here
    (any|error)[] v3 = <(any|error)[]>v2[0];
    v3[0] = true; // @panic bad list store
}
