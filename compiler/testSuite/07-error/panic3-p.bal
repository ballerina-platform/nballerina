// @productions panic-stmt error-constructor-expr string-literal function-call-expr
public function main() {
    p(error("help")); // @panic help
}

function p(error e) {
    panic e;
}
