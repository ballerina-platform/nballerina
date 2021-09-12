// @productions boolean-literal assign-stmt local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    boolean b = true;
    b = x; // @error
}