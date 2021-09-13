// @productions boolean boolean-literal return-stmt function-call-expr
public function main() {
    foo(); // @error  
}

function foo() returns boolean {
    return true;  
}
