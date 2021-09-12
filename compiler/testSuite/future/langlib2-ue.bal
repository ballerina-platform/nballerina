// @productions list-constructor-expr local-var-decl-stmt
public function main() {
    any x = [];
    int n = x.length(); // @error
    ignore(n); 
}

function ignore(int n) { }
