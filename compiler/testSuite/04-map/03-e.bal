// @productions map-type-descriptor list-constructor-expr any local-var-decl-stmt
public function main() {
    map<any> m = [];  // @error
    _ = m;
}
