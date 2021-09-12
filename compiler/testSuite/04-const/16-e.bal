// @productions string-literal equality if-else-stmt equality-expr
public function main() {
    if "xyz" == "xyz" {
    }
    else {
        foo(); // @error
    }
}

function foo() {

}