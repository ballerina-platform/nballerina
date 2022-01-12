// @productions string list-type-descriptor list-constructor-expr return-stmt function-call-expr assign-stmt local-var-decl-stmt int-literal
public function main() {
    any[] v = foo();
    v[1] = 1; // @panic no filler value
}

function foo() returns (int|string)[] {
    return [];
}