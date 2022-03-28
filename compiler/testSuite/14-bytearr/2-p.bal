public function main() {
    byte[] b1 = [];
    f(b1);
}

function f(any[] a) {
    byte b = 2;
    a[0] = b;

    int i = 4;
    a[1] = i;

    a[2] = "hello"; // @panic bad list store
}
