public function main() {
    if true <= false {
        foo(); // @error
    }
}

function foo() { }
