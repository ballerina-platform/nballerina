public function main() {
    byte[] b1 = [];
    f(b1);
}

function f(any[] a) {
    a[100] = asAny(1);

    a[1] = asAny(256); // @panic bad list store
}

function asAny(any a) returns any {
    return a;
}
