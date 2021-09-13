// @productions type-cast-expr local-var-decl-stmt
public function main() {
    int n = <int>(); // @error
    ignore(n);
}

function ignore(int n) {
    
}