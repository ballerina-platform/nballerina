public function main() {
    int n = foo(true);
    ignore(n);
}

function ignore(int n) {
    return;
}

function foo(boolean b) returns int {
    return -b; // @error
}
