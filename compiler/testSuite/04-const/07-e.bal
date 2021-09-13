// @productions if-else-stmt relational-expr int-literal
public function main() {
    if 1 >= 2 {
        foo(); // @error
    }
}

function foo() {

}