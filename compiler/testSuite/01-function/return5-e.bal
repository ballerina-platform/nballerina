// @productions boolean return-stmt function-call-expr local-var-decl-stmt
public function main() {
    boolean b = foo();
}

function foo() returns boolean {
    return; // @error
}
