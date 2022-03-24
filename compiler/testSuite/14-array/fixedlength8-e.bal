public function main() {
    int x = foo();
    int[x] v = [1, 2]; // @error
}

function foo() returns int {
    return 2;
}
