// @productions boolean relational-expr boolean-literal return-stmt function-call-expr
public function main() {
    toNil(toNil(true) < toNil(false)); // @error
}

function toNil(boolean b) {
    return;
}

