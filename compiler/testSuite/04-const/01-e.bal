// @productions equality if-else-stmt equality-expr additive-expr int-literal
public function main() {
    if 2 + 2 == 3 {
        foo(); // @error
    }
}

function foo() {

}