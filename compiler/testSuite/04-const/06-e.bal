// @productions equality if-else-stmt equality-expr unary-expr additive-expr int-literal
public function main() {
    if -(-9223372036854775807 - 1)  != 0 { // @error
        foo();
    }
}

function foo() { }