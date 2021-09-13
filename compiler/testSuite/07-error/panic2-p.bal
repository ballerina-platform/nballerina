// @productions panic-stmt error-constructor-expr string string-literal function-call-expr
public function main() {
    p("help");
}

function p(string s) {
    panic error(s); // @panic help
}
