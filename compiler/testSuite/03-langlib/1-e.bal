// @productions list-type-descriptor list-constructor-expr boolean-literal local-var-decl-stmt
public function main() {
    any[] x = [];
    int n = x.length(true); // @error
    ignore(n);
}

function ignore(int n) { }
