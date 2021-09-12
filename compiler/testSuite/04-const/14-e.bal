// @productions bitwise-xor-expr equality if-else-stmt equality-expr int-literal
public function main() {
    if (1 ^ 2) != 3 {
        foo(); // @error
    }
}

function foo() {

}