// @productions equality multiplicative-expr if-else-stmt equality-expr int-literal
public function main() {
    if 1/0 == 0 { // @error
        foo();
    }
}

function foo() { }