public function main() {
    if false > false {
        foo(); // @error
    }
}

function foo() { }