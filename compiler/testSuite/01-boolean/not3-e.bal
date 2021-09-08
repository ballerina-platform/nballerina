public function main() {
    boolean b = foo(17);
    ignore(b);
}

function ignore(boolean b) {
    return;
}

function foo(int n) returns boolean {
    return !n; // @error
}
