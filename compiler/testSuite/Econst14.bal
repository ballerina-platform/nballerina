public function main() {
    if (1 & 3) != 1 {
        foo(); // @error
    }
}

function foo() {

}