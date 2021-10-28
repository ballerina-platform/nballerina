// @productions map-type-descriptor mapping-constructor-expr string-literal any assign-stmt local-var-decl-stmt
public function main() {
    map<int> mi = {};
    map<any> ma = mi;
    ma["x"] = (); // @panic bad mapping store
    _ = ma;
}
