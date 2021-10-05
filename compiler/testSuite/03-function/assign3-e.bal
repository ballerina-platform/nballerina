// @productions local-var-decl-stmt
public function main() {
    int|error x = 2;
    int|error _ = x; // @error
}
