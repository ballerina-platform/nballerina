// @productions while-stmt additive-expr assign-stmt local-var-decl-stmt int-literal
public function main() {
    int i = 0;
    while i { // @error
        i = i + 1;
    }
}
