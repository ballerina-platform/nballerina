// @productions list-type-descriptor list-constructor-expr boolean-literal any local-var-decl-stmt int-literal
public function main() {
    int[] v = [1, false, 3]; // @error
    _ = v;
}
