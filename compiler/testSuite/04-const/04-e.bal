public function main() {
    if 65536*65536*65536*65536 == 0 { // @error
        foo();
    }
}

function foo() { }
