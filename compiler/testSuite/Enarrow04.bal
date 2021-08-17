public function main() {
   foo(1);
}

function foo(any v) {
    any x = v;
    if x is int {
        int i = 2;
        while true {
            if i == 0 {
                break;
            }
            x = x + 1; // @error
	        x = ();
	        i = i - 1;
            continue;
        }
    }
}
