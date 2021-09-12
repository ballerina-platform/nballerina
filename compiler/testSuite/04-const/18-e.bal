// @productions string-literal if-else-stmt relational-expr
public function main() {
    if "xyz" < "xyz" {
        foo(); // @error
    }
}

function foo() {

}