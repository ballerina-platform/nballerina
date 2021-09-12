// @productions function-call-expr

public function main() {
    f();
}

function f() { // @panic stack overflow
    f(); 
}