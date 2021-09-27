type Array (any|error)[];

public function main() {
    int[] v1 = [];
    any[] v2 = [];
    v2[0] = v1; // widens here
    Array v3 = <Array>v2[0];
    v3[0] = true; // @panic bad list store
}
