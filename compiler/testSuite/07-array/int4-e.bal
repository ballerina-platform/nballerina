// @productions list-type-descriptor list-constructor-expr boolean-literal any function-call-expr local-var-decl-stmt int-literal
public function main() {
    int[] v = [1, false, 3]; // @error
    ignore(v);
}

function ignore(any x) {}
