
public function main() {
    f();
}

function f() {
    f(); // @panic stack overflow
}