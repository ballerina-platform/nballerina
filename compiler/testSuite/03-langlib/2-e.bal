// @productions list-type-descriptor list-constructor-expr local-var-decl-stmt
public function main() {
    any[] x = [];
    x.length(); // @error
}
