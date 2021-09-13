// @productions return-stmt function-call-expr local-var-decl-stmt
public function main() {
    int x = foo();
    ignore(x);
}

function ignore(int x) {
    return;
}

function foo() returns int {
    return bar();  // @error
}

function bar() {
    return;
}
