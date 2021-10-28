// @productions boolean-literal return-stmt additive-expr function-call-expr int-literal
public function main() {
    foo(1 + true); // @error
}

function foo(int n) {
    return;
}
