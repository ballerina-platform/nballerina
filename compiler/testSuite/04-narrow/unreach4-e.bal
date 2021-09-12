// @productions equality if-else-stmt equality-expr int-literal
public function main() {
    if 1 == 1 {
    }
    else {
        foo(); // @error
    }
}

function foo() {

}