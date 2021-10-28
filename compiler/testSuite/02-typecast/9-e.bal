// @productions type-cast-expr boolean function-call-expr local-var-decl-stmt int-literal
public function main() {
    int n = 1;
    boolean b = <boolean>n; // @error
    ignore(b);
}

function ignore(boolean b) {
    
}