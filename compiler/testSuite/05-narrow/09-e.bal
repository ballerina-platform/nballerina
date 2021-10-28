// @productions is-expr continue-stmt while-stmt break-stmt equality if-else-stmt equality-expr boolean-literal additive-expr any function-call-expr assign-stmt local-var-decl-stmt int-literal
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
