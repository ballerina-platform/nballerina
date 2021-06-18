public function main() {
    foo(x); // @error
}
function foo(int x) {
    return;
}