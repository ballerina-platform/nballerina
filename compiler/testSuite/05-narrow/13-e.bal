// @productions equality if-else-stmt equality-expr local-var-decl-stmt int-literal
public function main() {
    int x = 1;
    if x == 1 {
    }
    else if x == 1 {  // @error
    }
}
