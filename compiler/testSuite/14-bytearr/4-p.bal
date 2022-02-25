public function main() {
    byte[] b1 = [];
    f(b1);
}

function f(int[] a) {
    a[0] = 256; // @panic bad list store
}
