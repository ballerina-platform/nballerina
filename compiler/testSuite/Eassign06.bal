public function main() {
    foo(17);
}

function foo(int n) {
    n = 10; // @error
}
