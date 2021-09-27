// @productions floating-point-literal return-stmt unary-expr function-call-expr
public function main() {
    foo(!1); // @error
}

function foo(int n) {
    return;
}
