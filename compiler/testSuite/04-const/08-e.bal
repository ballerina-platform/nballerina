// @productions if-else-stmt relational-expr int-literal
public function main() {
    if 2 <= 1 {
        foo(); // @error
    }
}

function foo() {

}