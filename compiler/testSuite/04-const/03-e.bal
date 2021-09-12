// @productions type-cast-expr boolean if-else-stmt floating-point-literal
public function main() {
    if <boolean>0 {  // @error
        foo();
    }
}

function foo() {

}