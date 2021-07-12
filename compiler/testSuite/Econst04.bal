public function main() {
    if 1/0 == 0 { // @error
        foo();
    }
}

function foo() { }