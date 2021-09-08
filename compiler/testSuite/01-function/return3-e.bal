public function main() {
    boolean b = foo();
}

function foo() returns boolean {
    return 17; // @error
}
