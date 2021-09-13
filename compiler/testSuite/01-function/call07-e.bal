// @productions boolean return-stmt function-call-expr local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    foo(x); // @error
}

function foo(boolean b) {
    return;
}
