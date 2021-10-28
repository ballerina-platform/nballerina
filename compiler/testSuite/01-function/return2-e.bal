// @productions boolean return-stmt function-call-expr local-var-decl-stmt int-literal
public function main() {
    boolean b = foo(2);
    _ = b;
}

function foo(int n) returns boolean {
    return n; // @error
}
