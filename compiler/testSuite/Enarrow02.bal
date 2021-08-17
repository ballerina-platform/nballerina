public function main() {
   foo(1);
}

function foo(any v) {
    any x = v;
    if x is int {
        // it's an error because x can be assigned to before this is executed
        while x > 0 { // @error
            x = x - 1; 
	        x = ();
        }
    }
}
