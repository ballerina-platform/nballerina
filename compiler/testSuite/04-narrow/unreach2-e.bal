// @productions if-else-stmt boolean-literal
public function main() {
    if false {
        foo(); // @error
    }
}

function foo() {

}
