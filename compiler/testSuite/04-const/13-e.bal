// @productions if-else-stmt relational-expr boolean-literal
public function main() {
    if false < false {
        foo(); // @error
    }
}

function foo() { }
