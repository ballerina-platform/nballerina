// @productions boolean boolean-literal return-stmt function-call-expr local-var-decl-stmt
public function main() {
    int x = foo(true);
    _ = x;
}

function foo(boolean b) returns int {
    return b; // @error
}
