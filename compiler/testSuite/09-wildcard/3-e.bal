// @labels local-init-var-decl-stmt function-call-expr
function foo() returns error {
    return error("MSG");
}

public function main() {
    int|error _ = foo(); // @error
}
