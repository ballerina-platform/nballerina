// @productions return-stmt local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    _ = x;
    return;
    int y = 2; // @error
    _ = y;
}
