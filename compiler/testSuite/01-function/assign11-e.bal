// @productions assign-stmt local-var-decl-stmt int-literal
public function main() {
    int|error x = 10;
    _ = x; // @error
}
