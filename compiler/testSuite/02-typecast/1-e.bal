// @productions type-cast-expr boolean-literal function-call-expr local-var-decl-stmt
public function main() {
    boolean b = true;
    int n = <int>b; // @error
    ignore(n);
}

function ignore(int n) {

}