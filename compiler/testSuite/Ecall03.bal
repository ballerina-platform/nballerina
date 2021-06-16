public function main() {
    int x = 1;
    foo(x); // @error
}

function foo(boolean b) {
    return;
}
