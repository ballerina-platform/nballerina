// @productions return-stmt function-call-expr
function foo(int i, string s) {
}

function bar(int i) returns int {
    return i*2;
}

public function main() {
    foo(6, "str");
}
