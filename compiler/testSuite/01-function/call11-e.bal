// @productions function-call-expr local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    foo(x); // @error
}

type foo int[];