// @productions equality if-else-stmt equality-expr local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    if x == 1 {
    }
    // this should get an error because x should be narrowed to not include `1` so the operand types are disjoint
    else if x == 1 {  // @error
    }
}
