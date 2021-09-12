public function main() {
    int[] v = [1, false, 3]; // @error
    ignore(v);
}

function ignore(any x) {}
