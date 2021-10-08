// @productions map-type-descriptor mapping-constructor-expr any function-call-expr local-var-decl-stmt int-literal
public function main() {
    map<any> m = {};
    int i = 2;
    ignore(m[i]); // @error
}

function ignore(any x) { }
