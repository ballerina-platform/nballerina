public function main() {
   foo(1);
}

function foo(any v) {
    any x = v;
    if x is int {
        foreach int i in 0 ..< 8 {
            if i == 4 {
                x = false;
                break;
            }
        }
        int _ = x; // @error
    }
}
