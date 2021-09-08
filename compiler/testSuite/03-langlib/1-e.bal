public function main() {
    any[] x = [];
    int n = x.length(true); // @error
    ignore(n);
}

function ignore(int n) { }
