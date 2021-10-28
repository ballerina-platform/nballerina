// @productions type-cast-expr boolean-literal local-var-decl-stmt
public function main() {
    int n = <int>true; // @error
    ignore(n);
}

function ignore(int n) {
    
}