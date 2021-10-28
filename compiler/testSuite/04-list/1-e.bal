// @productions string-literal list-type-descriptor list-constructor-expr any local-var-decl-stmt
public function main() {
    any[] v = [];  // @error
    _ = v["foo"];
}

