// @productions map-type-descriptor mapping-constructor-expr string-literal any local-var-decl-stmt int-literal
public function main() {
    map<int> m = { x: 1 };
    int x = m["x"]; // @error
    _ = x;
}
