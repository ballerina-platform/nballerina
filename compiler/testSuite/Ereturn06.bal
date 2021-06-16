public function main() {
    int x = foo();
    ignore(x);
}

function ignore(int x) {
    return;
}

function foo() returns int {
    return bar();  // @error
}

function bar() {
    return;
}
