// @productions boolean function-call-expr local-var-decl-stmt
public function main() {
    boolean b = foo();
    _ = b;
}

function foo() returns boolean {
     
} // @error

