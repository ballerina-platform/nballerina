// @productions return-stmt function-call-expr
public function main() {
    foo(x); // @error
}
function foo(int x) {
    return;
}