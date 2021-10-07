// @productions map-type-descriptor mapping-constructor-expr any local-var-decl-stmt int-literal
public function main() {
    map<any> m = {};
    int i = 2;
    _ = m[i]; // @error
}
