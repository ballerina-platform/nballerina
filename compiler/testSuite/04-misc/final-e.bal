// @productions final-local-var-decl-stmt assign-stmt local-var-decl-stmt int-literal
public function main() {
    final int i = 2;
    i = 3; // @error
}
