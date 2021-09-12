// @productions is-expr while-stmt if-else-stmt relational-expr additive-expr any function-call-expr assign-stmt local-var-decl-stmt int-literal
public function main() {
   foo(1);
}

function foo(any v) {
    any x = v;
    if x is int {
        int i = 2;
        while i > 0 {
            x = x + 1; // @error
	        x = ();
	        i = i - 1;
        }
    }
}
