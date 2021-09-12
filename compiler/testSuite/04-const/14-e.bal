public function main() {
    if (1 ^ 2) != 3 {
        foo(); // @error
    }
}

function foo() {

}