public function main() {
   foo(1);
}

function foo(any v) {
    any x = v;
    if x is int {
        foreach int i in 0 ..< 2 {
            x = (); // @error
        }
    }
}
