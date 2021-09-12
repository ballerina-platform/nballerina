// @productions list-type-descriptor list-constructor-expr any function-call-expr local-var-decl-stmt int-literal
public function main() {
    int[] v = [1, 2, 3];
    float x = v[1];
    ignore(x);
}

function ignore(any x) {}
