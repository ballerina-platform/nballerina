// @productions if-else-stmt relational-expr boolean-literal
public function main() {
    if true <= false {
        foo(); // @error
    }
}

function foo() { }
