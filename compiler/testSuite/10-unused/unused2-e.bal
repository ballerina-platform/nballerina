// @productions local-var-decl-stmt function-call-expr if-else-stmt
function foo(int x) {
    if x == 100 {
        string s = "100"; // @error
    }
}

public function main() {
    foo(100);
}
