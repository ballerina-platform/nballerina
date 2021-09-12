// @productions is-expr range-expr foreach-stmt if-else-stmt any function-call-expr assign-stmt local-var-decl-stmt int-literal
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
