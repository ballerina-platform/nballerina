public function main() {
    if -(-9223372036854775807 - 1)  != 0 { // @error
        foo();
    }
}

function foo() { }