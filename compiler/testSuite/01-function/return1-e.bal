public function main() {
    int x = foo(true);
}

function foo(boolean b) returns int {
    return b; // @error
}
