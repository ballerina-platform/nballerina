// @productions bitwise-and-expr equality if-else-stmt equality-expr int-literal
public function main() {
    if (1 & 3) != 1 {
        foo(); // @error
    }
}

function foo() {

}