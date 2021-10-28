// @productions equality boolean equality-expr boolean-literal return-stmt function-call-expr local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    boolean b = true;
    ignore(b == x); // @error
}

function ignore(boolean b) {
    return;
}
