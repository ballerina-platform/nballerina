// @labels local-init-var-decl-stmt error-constructor-expr
public function main() {
    error _ = error("Error"); // @error
}
