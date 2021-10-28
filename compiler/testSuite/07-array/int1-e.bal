// @productions list-type-descriptor list-constructor-expr any local-var-decl-stmt int-literal
public function main() {
    int[] v = [1, 2, 3];
    float x = v[1]; // @error
    _ = x;
}
