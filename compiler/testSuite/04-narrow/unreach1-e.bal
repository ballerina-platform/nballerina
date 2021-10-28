// @productions if-else-stmt boolean-literal
public function main() {
    if true {
    }
    else {
        foo(); // @error
    }
}

function foo() {

}