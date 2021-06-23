public function main() {
    foo(1 + true); // @error
}

function foo(int n) {
    return;
}
