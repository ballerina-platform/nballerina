// @productions list-type-descriptor any function-call-expr local-var-decl-stmt int-literal
public function main() {
    int n = 1;
    any[] x = n;
    ignore(x);
}

public function ignore(any x) {
}