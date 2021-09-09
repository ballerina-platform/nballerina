public function main() {
    foo(); // @error  
}

function foo() returns boolean {
    return true;  
}
