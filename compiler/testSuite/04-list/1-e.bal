// @productions string-literal list-type-descriptor list-constructor-expr any function-call-expr local-var-decl-stmt
public function main() {
    any[] v = [];  // @error
    ignore(v["foo"]);
}

function ignore(any x) { }
