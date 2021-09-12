// @productions boolean-literal return-stmt function-call-expr int-literal
public function main() {
    foo(1, false); // @error
}

function foo(int x, int y) {
    return;
}
