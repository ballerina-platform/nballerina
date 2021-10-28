// @productions return-stmt function-call-expr
public function main() {
    foo(1, 2, 3); // @error
}

function foo(int x, int y) {
    return;
}