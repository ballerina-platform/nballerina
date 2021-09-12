public function main() {
    any[] v = foo();
    v[1] = 1; // @panic list has no filler
}

function foo() returns (int|string)[] {
    return [];
}