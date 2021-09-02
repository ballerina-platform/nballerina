public function main() {
    int[] v = []; 
    v[0] = true; // @error
    ignore(v);
}

function ignore(any x) {}
