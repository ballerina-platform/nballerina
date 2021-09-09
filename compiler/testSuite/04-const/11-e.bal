public function main() {
    if false >= true {
        foo(); // @error
    }
}

function foo() { }
