// @productions list-type-descriptor list-constructor-expr boolean-literal any function-call-expr assign-stmt local-var-decl-stmt int-literal
public function main() {
    int[] v = []; 
    v[0] = true; // @error
    ignore(v);
}

function ignore(any x) {}
