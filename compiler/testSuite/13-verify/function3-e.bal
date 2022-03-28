public function main() {
    int z = foo(2,
        1,
        "d" // @error
    );
}

function foo(int x, int y, int z) returns int {
    return x;
}
