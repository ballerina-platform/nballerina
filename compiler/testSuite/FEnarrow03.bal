public function main() {
   foo(1);
}

function foo(any v) {
    any x = v;
    if x is int {
        int i = 2;
        while i > 0 {
            x = x + 1; // not allowed
	        x = ();
	        i = i - 1;
        }
    }
}
