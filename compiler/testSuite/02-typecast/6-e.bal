// @productions type-cast-expr function-call-expr local-var-decl-stmt
public function main() {
    int n = <int>makeNil(); // @error
    ignore(n);
}

function makeNil() {

}

function ignore(int n) {
    
}