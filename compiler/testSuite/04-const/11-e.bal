// @productions if-else-stmt relational-expr boolean-literal
public function main() {
    if false >= true {
        foo(); // @error
    }
}

function foo() { }
