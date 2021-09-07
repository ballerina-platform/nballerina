public function main() {
    int n = 1;
    n = n.length(); // @error
    ignore(n);
}

function ignore(int n) { }
