// @productions map-type-descriptor mapping-constructor-expr string-literal boolean-literal any function-call-expr assign-stmt local-var-decl-stmt int-literal
public function main() {
    map<int> m = { x: 1 };
    m["x"] = false; // @error
    ignore(m);
}

function ignore(any x) {}
