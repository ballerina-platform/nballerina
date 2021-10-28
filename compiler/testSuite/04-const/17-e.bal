// @productions string-literal equality if-else-stmt equality-expr
public function main() {
    if "xyz" != "xyz" {
        foo(); // @error
    }
}

function foo() {

}