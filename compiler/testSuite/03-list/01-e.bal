// @productions list-type-descriptor any local-var-decl-stmt int-literal
public function main() {
    int n = 1;
    any[] x = n; // @error
    _ = x;
}
